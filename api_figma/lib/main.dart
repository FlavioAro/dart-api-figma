import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:api_figma/src/models/figma_model.dart';
import 'package:api_figma/src/controllers/figma_controller.dart';
import 'package:api_figma/src/views/figma_view.dart';

void main() {
  final figmaFileId = "56556dfnjhud67nfkd87";
  final personalAccessToken =
      "fijaidjf843ju8j3843984jjjshundswtf4ydsjfgqkipd-eNAlnrllvKqzlysfml3v0GA";

  final figmaModel = FigmaModel(personalAccessToken);
  final figmaController = FigmaController(figmaModel);
  final figmaView = FigmaView(figmaController);

  figmaView.printFile(figmaFileId);
}
