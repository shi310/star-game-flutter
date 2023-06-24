import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import '../common.dart';

class ConfigController extends GetxController {
  static ConfigController get to => Get.find();

  // 是否曾经使用过APP，
  bool isUsedApp = SharedService.to.getBool(sharedIsUsedAppKey);

  // 读取主题设置
  bool isDarkMode = SharedService.to.getBool(sharedIsDarkModeKey);

  // 系统类型
  String platform = '';

  // 手机系统版本
  String osversion = '';

  // APP版本
  String version = '';

  // 机型
  String model = '';

  // 包信息
  PackageInfo packageInfo = PackageInfo(
    appName: '',
    packageName: '',
    version: '',
    buildNumber: '',
  );

  // 语言设置
  final locale = const Locale('en', 'US').obs;

  // 区号列表数据
  // areaCodeList: 区号列表数据
  // areaCode：区号的状态，改变时会对应的改变页面的文字
  // areaShortName：区号的短名称
  final areaCodeList = AreaCodeListModel.fromJson(AreaCodeListModel.child);
  final areaCode = SharedService.to.getString(sharedAreaCodeKey).obs;
  final areaName = SharedService.to.getString(sharedAreaNameKey).obs;
  String areaShortName = 'CN';

  @override
  void onReady() async {
    super.onReady();

    // 读取设备信息
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (GetPlatform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      platform = 'android';
      osversion = 'Android ${androidInfo.version.sdkInt}';
      model = androidInfo.model;
    } else if (GetPlatform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      platform = 'ios';
      osversion = 'IOS ${iosInfo.systemVersion}';
      model = iosInfo.model;
    }

    // 读取储存的语言设置
    var localeString = SharedService.to.getString(sharedLocalKey);

    if (localeString.isEmpty) {
      locale.value = Translation.locale;
    } else if (localeString == 'zh_CN') {
      locale.value = const Locale('zh', 'CN');
    } else if (localeString == 'en_US') {
      locale.value = const Locale('en', 'US');
    } else {
      locale.value = const Locale('ve', 'NA');
    }
    locale.update((val) {});
    Get.updateLocale(locale.value);

    // 设置主题
    changeTheme();

    // 包信息
    packageInfo = await PackageInfo.fromPlatform();

    // 设置安卓状态栏
    await setTransparentStatusBar();

    // 设置竖屏
    await setPreferredOrientations();
  }

  /// - 改变主题
  void changeTheme() {
    Get.changeTheme(isDarkMode ? MyTheme.dart : MyTheme.light);
  }

  /// - 改变主题并保存设置到本地
  void changeThemeAndSave() {
    isDarkMode = !isDarkMode;
    SharedService.to.setBool(sharedIsDarkModeKey, isDarkMode);
    changeTheme();
  }

  /// - 将顶部状态栏和底部状态栏设置成透明
  Future<void> setTransparentStatusBar() async {
    // 显示顶部栏(隐藏底部栏，没有这个的话底部状态栏的透明度无法实现)
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    const style = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    );

    SystemChrome.setSystemUIOverlayStyle(style);
  }

  /// - 强制竖屏：用到了SystemChrome服务，所以需要初始化
  Future<void> setPreferredOrientations() async {
    // 强制竖屏：用到了SystemChrome服务，所以需要初始化
    // 如：WidgetsFlutterBinding.ensureInitialized();
    var option = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
    await SystemChrome.setPreferredOrientations(option);
  }
}
