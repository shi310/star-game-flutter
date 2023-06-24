import 'package:get/get.dart';

import 'index.dart';

class SetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetController>(() => SetController());
  }
}
