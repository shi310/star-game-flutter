import 'package:get/get.dart';

import 'index.dart';

class TertisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TertisController>(() => TertisController());
  }
}
