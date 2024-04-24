import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../../common/common.dart';
import 'index.dart';

class HomeController extends GetxController {
  final state = HomeState();

  void changeTheme() {
    print('object');
    ConfigController.to.isDarkMode = !ConfigController.to.isDarkMode;
    ConfigController.to.changeTheme();
    SharedService.to.setBool(
      sharedIsDarkModeKey,
      ConfigController.to.isDarkMode,
    );
  }

  void signIn() {
    Get.toNamed(MyRoutes.signIn);
    // The following line will enable the Android and iOS wakelock.
    WakelockPlus.enable();
  }

  void signUp() {
    Get.toNamed(MyRoutes.signUp);
  }
}
