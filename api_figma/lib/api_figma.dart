import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final String url = "https://api.figma.com/v1/files/ID OF YOUR FIGMA FILE";
  final String token = "TOKEN";

  final response = await http.get(
    Uri.parse(url),
    headers: {"X-Figma-Token": token},
  );

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    print(jsonResponse);
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }
}
