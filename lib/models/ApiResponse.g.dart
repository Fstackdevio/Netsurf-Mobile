part of 'ApiResponse.dart';

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => new ApiResponse(
    result: json['result'] as String,
    message: json['message'] as String,
    user: json['user'] == null
        ? null
        : new User.fromJson(json['user'] as Map<String, dynamic>),
    quota: json['quota'] == null
        ? null
        : new Quota.fromJson(json['quota'] as Map<String, dynamic>));

abstract class _$ApiResponseSerializerMixin {
  String get result;
  String get message;
  String get user;
  String get quota;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'result': result,
        'message': message,
        'user': user,
        'quota': quota
      };
}
