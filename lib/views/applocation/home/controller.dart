import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class HomeController extends GetxController {
  final state = HomeState();

  void changeTheme() {
    ConfigController.to.isDarkMode = !ConfigController.to.isDarkMode;
    ConfigController.to.changeTheme();
    SharedService.to.setBool(
      sharedIsDarkModeKey,
      ConfigController.to.isDarkMode,
    );
  }

  void signIn() {
    Get.toNamed(MyRoutes.signIn);
  }

  void signUp() {
    Get.toNamed(MyRoutes.signUp);
  }
}
