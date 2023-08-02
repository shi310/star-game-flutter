import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_game_flutter/common/common.dart';

import 'index.dart';

class SetPassword extends GetView<SetPasswordController> {
  const SetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set'),
      ),
      body: Column(
        children: [
          const Text('Set to star-game'),
          FilledButton(
              onPressed: () {
                ConfigController.to.isDarkMode =
                    !ConfigController.to.isDarkMode;
                ConfigController.to.changeTheme();
                SharedService.to.setBool(
                    sharedIsDarkModeKey, ConfigController.to.isDarkMode);
              },
              child: const Text('data'))
        ],
      ),
    );
  }
}
