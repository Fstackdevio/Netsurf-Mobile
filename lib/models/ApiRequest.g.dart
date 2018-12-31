part of 'ApiRequest.dart';

ApiRequest _$ApiRequestFromJson(Map<String, dynamic> json) => new ApiRequest(
    operation: json['operation'] as String,
    user: json['user'] == null
        ? null
        : new User.fromJson(json['user'] as Map<String, dynamic>),
    quota: json['quota'] == null
        ? null
        : new Quota.fromJson(json['quota'] as Map<String, dynamic>));

abstract class _$ApiRequestSerializerMixin {
  String get operation;
  User get user;
  Quota get quota;

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'operation': operation, 'user': user, 'quota': quota};
}
