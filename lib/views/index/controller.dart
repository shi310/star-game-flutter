import 'package:get/get.dart';

import '../../common/common.dart';

class IndexController extends GetxController {
  void onTetrisView() {
    Get.toNamed(MyRoutes.tetris);
  }
}
