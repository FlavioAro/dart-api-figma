import 'package:api_figma/src/controllers/figma_controller.dart';

class FigmaView {
  final FigmaController controller;

  FigmaView(this.controller);

  void printFile(String figmaFileId) async {
    try {
      await controller.printFile(figmaFileId);
    } catch (e) {
      print(e);
    }
  }
}
