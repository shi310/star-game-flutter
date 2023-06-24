import 'package:flutter/material.dart';

import '../common.dart';

/// 自定义主题颜色
extension CustomThemeDataExt on ThemeData {
  // 俄罗斯方块的默认主色
  Color get tetrisDefaultPrimaryColor => ConfigController.to.isDarkMode
      ? const Color(0xFF303032)
      : const Color(0xFFCACACA);

  // 俄罗斯方块的默认辅色
  Color get tetrisDefaultSecondColor => ConfigController.to.isDarkMode
      ? const Color(0x30303032)
      : const Color(0x30CACACA);

  // 俄罗斯方块的移动和着陆主色
  Color get tetrisMovePrimaryColor => ConfigController.to.isDarkMode
      ? const Color(0xFF13C77F)
      : const Color(0xFFB52727);

  // 俄罗斯方块的移动和着陆辅色
  Color get tetrisMoveSecondColor => ConfigController.to.isDarkMode
      ? const Color(0x2013C77F)
      : const Color(0x20B52727);

  // 边框的颜色
  Color get tetrisOutline => ConfigController.to.isDarkMode
      ? const Color(0xFF747474)
      : const Color(0xff000000);

  // 半透明背景色
  Color get halfBlackground => ConfigController.to.isDarkMode
      ? const Color(0x50000000)
      : const Color(0x50ffffff);
}
