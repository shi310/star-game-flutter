import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Text('Home to star-game'),
          FilledButton(
            onPressed: controller.changeTheme,
            child: const Text('修改主题'),
          ),
          FilledButton(
            onPressed: controller.signIn,
            child: const Text('立即登陆'),
          ),
          FilledButton(
            onPressed: controller.signUp,
            child: const Text('立即注册'),
          ),
        ],
      ),
    );
  }
}
