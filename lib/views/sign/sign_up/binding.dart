import 'package:get/get.dart';

import 'index.dart';

class SingUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingUpController>(() => SingUpController());
  }
}
