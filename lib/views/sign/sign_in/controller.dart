import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/common.dart';
import 'index.dart';

class SignInController extends GetxController {
  final state = SignInState();

  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    var res = await UserApi.signIn(
      account: accountController.text,
      password: MyCrypto.duMD5(passwordController.text, UserController.to.salt),
    );

    if (res != null && res.code == 200) {
      print(res.data);
    } else {
      print('object');
    }
  }
}
