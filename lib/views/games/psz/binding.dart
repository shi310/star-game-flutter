import 'package:get/get.dart';

import 'index.dart';

class PszBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PszController>(() => PszController());
  }
}
