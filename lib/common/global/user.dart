import 'package:get/get.dart';

import '../common.dart';

class UserController extends GetxController {
  static UserController get to => Get.find();

  // 令牌 token
  var token = SharedService.to.getString(sharedUserTokenKey);

  // salt
  var salt = '';

  // 保存 token
  void setToken(String value) {
    token = value;
    SharedService.to.setString(sharedUserTokenKey, value);
  }

  // 用户信息
  var userInfo = UserInfoModel.fromJson(UserInfoModel.child).obs;
}
