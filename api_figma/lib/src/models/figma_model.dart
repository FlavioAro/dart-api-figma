import 'dart:convert';
import 'package:http/http.dart' as http;

class FigmaModel {
  final String accessToken;

  FigmaModel(this.accessToken);

  Future<Map<String, dynamic>> getFile(String fileId) async {
    final response = await http.get(
      Uri.parse("https://api.figma.com/v1/files/$fileId"),
      headers: {"X-Figma-Token": accessToken},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Request failed with status: ${response.statusCode}.");
    }
  }
}
