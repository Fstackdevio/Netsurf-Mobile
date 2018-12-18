class NotificationModel {
  final String name;
  final String messageType;
  final String operation;
  final String quotaSize;
  final String timestamp;
  final String avatarUrl;

  NotificationModel(
      {this.name,
      this.messageType,
      this.operation,
      this.quotaSize,
      this.timestamp,
      this.avatarUrl});
}

List<NotificationModel> notificationData = [NotificationModel(
  //Hook up api data to populate the notification screen....
  //name: response.body.name, 
  //messageType: response.body.messageType, 
  //operation: response.body.operation, 
  //quotaSize: response.body.quotaSize, 
  //timestamp: response.body.timestamp,
  //avatarUrl: response.body.avatarUrl,
  )];
