import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class IndexView extends GetView<IndexController> {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// appbar
    var appBar = AppBar(
      title: const Text('Index'),
    );

    var body = Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Obx(() => controller.state.isGetDone?FilledButton(
            onPressed: controller.onTetrisView,
            child: const Text('立即体验'),
          ):const Text('正在获取配置信息...')),
        ],
      ),
    );

    /// 页面构成
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
