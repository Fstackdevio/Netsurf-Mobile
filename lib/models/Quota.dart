import 'package:json_annotation/json_annotation.dart';

part 'Quota.g.dart';

@JsonSerializable()
class Quota extends Object with _$UserSerializerMixin {
  String id;
  String username;
  String receipent;
  String amount;
  String quota_size;
  String ewallet;
  String ewallet_pin;

  Quota({
    this.id,
    this.username,
    this.receipent,
    this.amount,
    this.quota_size,
    this.ewallet,
    this.ewallet_pin,
  });

  factory Quota.fromJson(Map<String, dynamic> json) => _$QuotaFromJson(json);
}
