import 'package:get/get.dart';
import 'package:star_game_flutter/common/common.dart';

class WelcomeController extends GetxController {
  final title = 'Welcome';

  @override
  void onReady() async {
    await SharedService.to.setBool(sharedIsUsedAppKey, true);
    super.onReady();
  }
}
