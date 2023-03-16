import 'package:api_figma/src/controllers/figma_controller.dart';

class FigmaView {
  final FigmaController controller;

  FigmaView(this.controller);

  void printFile(String fileId) async {
    try {
      await controller.printFile(fileId);
    } catch (e) {
      print(e);
    }
  }
}
