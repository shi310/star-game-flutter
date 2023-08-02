import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class MyView extends GetView<MyController> {
  const MyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My'),
      ),
      body: Column(
        children: [
          const Text('My to star-game'),
          FilledButton(
            onPressed: controller.changeTheme,
            child: const Text('data'),
          )
        ],
      ),
    );
  }
}
