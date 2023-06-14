
class LoginModel {
  String? token;
  String? privatetoken;

  LoginModel({this.token, this.privatetoken});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    privatetoken = json['privatetoken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['privatetoken'] = this.privatetoken;
    return data;
  }
}