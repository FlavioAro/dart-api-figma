import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final String idFigma = "56556dfnjhud67nfkd87";
  final String personalAccessToken =
      "fijaidjf843ju8j3843984jjjshundswtf4ydsjfgqkipd";

  final response = await http.get(
    Uri.parse("https://api.figma.com/v1/files/$idFigma"),
    headers: {"X-Figma-Token": personalAccessToken},
  );

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    // List<String> responseArray = jsonResponse.toString().split(RegExp(r'[:,]'));
    List<String> responseArray = jsonResponse.toString().split(",");

    for (int i = 0; i < responseArray.length; i++) {
      print("Counter: ($i) = ${responseArray[i]}");
    }
  } else {
    print("Request failed with status: ${response.statusCode}.");
  }
}
