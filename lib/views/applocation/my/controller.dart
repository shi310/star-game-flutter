import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class MyController extends GetxController {
  final state = MyState();

  void changeTheme() {
    ConfigController.to.isDarkMode = !ConfigController.to.isDarkMode;
    ConfigController.to.changeTheme();
    SharedService.to.setBool(
      sharedIsDarkModeKey,
      ConfigController.to.isDarkMode,
    );
  }
}
