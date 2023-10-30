class LoginData {
  int? id;
  Null? firstName;
  Null? lastName;
  Null? username;
  Null? password;
  String? pwdPrompt;
  Null? confirmPassword;
  String? token;
  String? message;
  int? compCode;
  Null? module;
  int? msgType;
  Null? authType;
  Null? ipAddress;

  LoginData(
      {this.id,
        this.firstName,
        this.lastName,
        this.username,
        this.password,
        this.pwdPrompt,
        this.confirmPassword,
        this.token,
        this.message,
        this.compCode,
        this.module,
        this.msgType,
        this.authType,
        this.ipAddress});

  LoginData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    password = json['password'];
    pwdPrompt = json['pwdPrompt'];
    confirmPassword = json['confirmPassword'];
    token = json['token'];
    message = json['message'];
    compCode = json['compCode'];
    module = json['module'];
    msgType = json['msgType'];
    authType = json['authType'];
    ipAddress = json['ipAddress'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['password'] = this.password;
    data['pwdPrompt'] = this.pwdPrompt;
    data['confirmPassword'] = this.confirmPassword;
    data['token'] = this.token;
    data['message'] = this.message;
    data['compCode'] = this.compCode;
    data['module'] = this.module;
    data['msgType'] = this.msgType;
    data['authType'] = this.authType;
    data['ipAddress'] = this.ipAddress;
    return data;
  }
}