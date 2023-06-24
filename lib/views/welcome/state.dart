import 'package:get/get.dart';

class WelcomeState {
  // final _isShowButton = false.obs;
  // set isShowButton(bool value) => _isShowButton.value = value;
  // bool get isShowButton => _isShowButton.value;

  /// 进度条的数值状态
  final _loadingValue = 0.0.obs;
  set loadingValue(double value) => _loadingValue.value = value;
  double get loadingValue => _loadingValue.value;
}
