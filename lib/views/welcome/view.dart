import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: const Text('Welcome to star-game123123'),
    );
  }
}
