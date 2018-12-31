part of 'User.dart';

User _$UserFromJson(Map<String, dynamic> json) => new User(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    username: json['username'] as String,
    avatar: json['avatar'] as String,
    quota: json['quota'] as String,
    ewallet: json['ewallet'] as String,
    ewallet_pin: json['ewallet_pin'] as String,
    secret_pin: json['secret_pin'] as String,
    password: json['password'] as String,
    old_password: json['old_password'] as String,
    new_password: json['new_password'] as String);

abstract class _$UserSerializerMixin {
  String get id;
  String get name;
  String get email;
  String get username;
  String get avatar;
  String get quota;
  String get ewallet;
  String get ewallet_pin;
  String get secret_pin;
  String get password;
  String get old_password;
  String get new_password;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'username': username,
        'avatar': avatar,
        'quota': quota,
        'ewallet': ewallet,
        'ewallet_pin': ewallet_pin,
        'secret_pin': secret_pin,
        'password': password,
        'old_password': old_password,
        'new_password': new_password
      };
}
