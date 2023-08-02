import 'dart:convert';
import 'package:crypto/crypto.dart';

class MyCrypto {
  /// MD5加密
  static String duMD5(String valut, String salt) {
    var bytes = utf8.encode(valut + salt);
    var digest = md5.convert(bytes);

    return digest.toString();
  }
}
