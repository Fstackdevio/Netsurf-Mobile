class NotificationModel {
  final name;
  final messageType;
  final operation;
  final quotaSize;
  final timestamp;
  final avatarUrl;

  NotificationModel(
      {this.name,
      this.messageType,
      this.operation,
      this.quotaSize,
      this.timestamp,
      this.avatarUrl});
}

List<NotificationModel> notificationData = [
  //NotificationModel(
  //Hook up api data to populate the notification screen....
  //name: response.body.name,
  //messageType: response.body.messageType,
  //operation: response.body.operation,
  //quotaSize: response.body.quotaSize,
  //timestamp: response.body.timestamp,
  //avatarUrl: response.body.avatarUrl,
  //  ),
  NotificationModel(
      name: 'Mayokun Adeniyi',
      messageType: 'recieved',
      operation: 'quota_got',
      quotaSize: '400MB',
      timestamp: '2 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'David Adegoke',
      messageType: 'recieved',
      operation: 'quota_got',
      quotaSize: '250MB',
      timestamp: '4 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Bright Obuji',
      messageType: 'sent',
      operation: 'quota_sent',
      quotaSize: '400MB',
      timestamp: '5 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Nathaniel Bitrue',
      messageType: 'sent',
      operation: 'quota_sent',
      quotaSize: '60MB',
      timestamp: '5 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Mayokun Adeniyi',
      messageType: 'recieved',
      operation: 'quota_got',
      quotaSize: '500MB',
      timestamp: '6 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Micheal Ogunfemi',
      messageType: 'sent',
      operation: 'quota_sent',
      quotaSize: '400MB',
      timestamp: '6 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Adeojo Emmanuel',
      messageType: 'recieved',
      operation: 'quota_got',
      quotaSize: '50MB',
      timestamp: '7 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Ansa David',
      messageType: 'recieved',
      operation: 'quota_got',
      quotaSize: '600MB',
      timestamp: '8 Hours ago',
      avatarUrl: 'url'),
  NotificationModel(
      name: 'Mayokun Adeniyi',
      messageType: 'sent',
      operation: 'quota_sent',
      quotaSize: '70MB',
      timestamp: '8 Hours ago',
      avatarUrl: 'url'),
];
