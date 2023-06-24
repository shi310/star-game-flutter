import 'package:get/get.dart';

import 'index.dart';

class UnknownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnknownController>(() => UnknownController());
  }
}
