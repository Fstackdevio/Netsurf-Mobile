class Notifier {
  String name;
  String messageType;
  String message;
  String timestamp;
  String avatarUrl;

  Notifier(
      {this.name,
      this.messageType,
      this.message,
      this.timestamp,
      this.avatarUrl});

  Notifier.map(dynamic obj){
    this.name = obj['name'];
    this.messageType = obj['messageType'];
    this.message = obj['message'];
    this.timestamp = obj['timestamp'];
    this.avatarUrl = obj['avatarUrl'];
  }

  String get _name => name;
  String get _messageType => messageType;
  String get _message => message;
  String get _timestamp => timestamp;
  String get _avatarUrl => avatarUrl;
}
