part of 'Quota.dart';

Quota _$QuotaFromJson(Map<String, dynamic> json) => new Quota(
    id: json['id'] as String,
    username: json['username'] as String,
    receipent: json['receipent'] as String,
    amount: json['amount'] as String,
    quota_size: json['quota_size'] as String,
    ewallet: json['ewallet'] as String,
    ewallet_pin: json['ewallet_pin'] as String);

abstract class _$UserSerializerMixin {
  String get id;
  String get username;
  String get receipent;
  String get amount;
  String get quota_size;
  String get ewallet;
  String get ewallet_pin;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'username': username,
        'receipent': receipent,
        'amount': amount,
        'quota_size': quota_size,
        'ewallet': ewallet,
        'ewllet_pin': ewallet_pin,
      };
}
