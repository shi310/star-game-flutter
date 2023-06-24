import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_game_flutter/common/common.dart';

import 'index.dart';

class SetView extends GetView<SetController> {
  const SetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set'),
      ),
      body: Column(
        children: [
          const Text('Set to star-game'),
          TextButton(
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
