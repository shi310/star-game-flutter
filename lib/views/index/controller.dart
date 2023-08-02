import 'package:get/get.dart';

import '../../common/common.dart';
import '../views.dart';

class IndexController extends GetxController {
  final state = IndexState();
  void onTetrisView() {
    Get.offAllNamed(MyRoutes.home);
  }

  Future<void> getConfig() async {
    await MyTimer.futureDelayed(milliseconds: 3000);
    var res = await ConfigApi.getconfig();
    if (res != null && res.code == 200) {
      state.isGetDone = true;
      if (res.data != null) UserController.to.salt = res.data!['salt'];
    } else {
      for (int i = 0; i < 3; i++) {
        getConfig();
      }
    }
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    await getConfig();
  }
}
