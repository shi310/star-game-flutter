import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'theme_light.dart';
part 'theme_dark.dart';

/// 读取主题里的配置信息
/// Container(
///     color: Theme.of(context).backgroundColor,
///     child: Text('hellow', style: Theme.of(context).headline).bodyText1,
///   );
/// }
class MyTheme {
  static const horizontalMargin = 16.0;
  static const radius = 10.0;
  static const borderRadius = BorderRadius.all(Radius.circular(8));
  static const decoration = BoxDecoration(shape: BoxShape.rectangle);
  static ThemeData light = themeLight;
  static ThemeData dart = themeDark;
}
