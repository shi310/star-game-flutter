import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class PszView extends GetView<PszController> {
  const PszView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psz'),
      ),
      body: Column(
        children: [
          const Text('Psz to star-game'),
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
