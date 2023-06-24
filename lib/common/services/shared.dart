import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedService extends GetxService {
  static SharedService get to => Get.find();
  late final SharedPreferences _prefs;

  /// 初始化 SharedPreferences
  /// 本地储存
  Future<SharedService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  /// 储存 string
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  /// 储存 bool
  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  /// 储存字符串数组 [string]
  Future<bool> setList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  /// 储存 int
  Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  /// 储存 double
  Future<bool> setDouble(String key, double value) async {
    return await _prefs.setDouble(key, value);
  }

  /// 提取 string
  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  /// 提取 bool
  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  /// 提取数组字符串 [string]
  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  /// 提取 int
  int getInt(String key) {
    return _prefs.getInt(key) ?? 0;
  }

  /// 提取double
  double getDouble(String key) {
    return _prefs.getDouble(key) ?? 0.0;
  }

  /// 删除数据
  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
}
