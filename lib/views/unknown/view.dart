import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class UnknownView extends GetView<UnknownController> {
  const UnknownView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// appbar
    var appBar = AppBar(
      title: const Text('Unknown Page'),
    );

    /// 页面构成
    return Scaffold(appBar: appBar);
  }
}
