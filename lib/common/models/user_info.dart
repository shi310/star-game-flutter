class UserInfoModel {
  UserInfoModel({
    required this.userName,
    required this.userId,
    required this.balance,
    required this.isFirstSetPassword,
    this.code,
    this.phone,
  });

  String userName;
  int userId;
  double balance;

  String? phone;
  String? code;
  bool isFirstSetPassword;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        userName: json["userName"],
        userId: json["userId"],
        balance: json["balance"],
        phone: json["phone"],
        code: json["code"],
        isFirstSetPassword: json["isFirstSetPassword"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "userId": userId,
        "balance": balance,
        "phone": phone,
        "code": code,
        "isFirstSetPassword": isFirstSetPassword,
      };

  static Map<String, dynamic> child = {
    "userName": '',
    "userId": 0,
    "balance": 0.00,
    "isFirstSetPassword": false,
  };
}
