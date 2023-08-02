import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SingUpView extends GetView<SingUpController> {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// appbar
    var appBar = AppBar(
      title: const Text('SingUp'),
    );

    var body = const SizedBox();

    /// 页面构成
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
