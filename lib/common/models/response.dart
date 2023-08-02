// 返回数据格式化
class ResponseModel {
  ResponseModel({
    required this.code,
    this.data,
    required this.message,
  });

  int code;
  Map<String, dynamic>? data;
  String message;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        code: json["code"],
        data: json["data"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": data,
        "message": message,
      };

  factory ResponseModel.err() => ResponseModel(
        code: -200,
        data: {},
        message: 'message',
      );
}
