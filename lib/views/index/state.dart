import 'package:get/get.dart';

class IndexState {
  final _isGetDone = false.obs;
  set isGetDone(bool value) => _isGetDone.value = value;
  bool get isGetDone => _isGetDone.value;
}
