class LotteryLoginModel {
  late bool status;
  String? message;
  UserData? data;

  LotteryLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }
}

class UserData {
  int? id;
  String? loginname;
  String? email;
  String? phone;
  String? password;

  String? token;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    loginname = json['loginname'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];

    token = json['token'];
  }
}

class ChangePasswordModel {
  late bool status;
  late String message;

  ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json["message"];
  }
}
