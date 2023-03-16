import 'dart:convert';
import 'package:http/http.dart' as http;

class FigmaModel {
  final String personalAccessToken;

  FigmaModel(this.personalAccessToken);

  Future<Map<String, dynamic>> getFile(String figmaFileId) async {
    final response = await http.get(
      Uri.parse("https://api.figma.com/v1/files/$figmaFileId"),
      headers: {"X-Figma-Token": personalAccessToken},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Request failed with status: ${response.statusCode}.");
    }
  }
}
