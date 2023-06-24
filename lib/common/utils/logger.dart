import 'package:flutter/material.dart';

/// 日志格式化
class MyLogger {
  static void write(String text, {bool isError = false}) {
    Future.microtask(() => debugPrint('** $text. isError: [$isError]'));
  }
}
