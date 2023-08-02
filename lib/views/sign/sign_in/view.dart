import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// appbar
    var appBar = AppBar(
      title: const Text('SignIn'),
    );

    var body = Column(
      children: [
        TextField(
          controller: controller.accountController,
        ),
        TextField(
          controller: controller.passwordController,
        ),
        FilledButton(onPressed: controller.signIn, child: const Text('立即登陆'))
      ],
    );

    /// 页面构成
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
