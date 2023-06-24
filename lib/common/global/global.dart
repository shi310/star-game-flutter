import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common.dart';

// 全局静态数据
class Global {
  // 初始化
  static Future<void> init() async {
    // 运行初始, 用到了servis就需要处初始化，否则会报错
    // 全局只需要使用一次
    WidgetsFlutterBinding.ensureInitialized();

    // 本地储存初始化
    // 可以储存数据在本地
    await Get.putAsync<SharedService>(() => SharedService().init());

    // 导入http连接接口
    // 用户网络请求和websocket
    Get.put(DioService());

    // 导入全局控制器
    // config：系统控制器
    Get.put(ConfigController());

    // 导入用户控制器
    // user: 用户控制器
    Get.put(UserController());
  }
}
