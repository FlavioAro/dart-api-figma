import 'package:api_figma/src/models/figma_model.dart';

class FigmaController {
  final FigmaModel model;

  FigmaController(this.model);

  Future<void> printFile(String fileId) async {
    final jsonResponse = await model.getFile(fileId);
    final responseArray = jsonResponse.toString().split(",");

    for (int i = 0; i < responseArray.length; i++) {
      print("Counter: ($i) = ${responseArray[i]}");
    }
  }
}
