import 'package:flutter/material.dart';
import 'package:netsurf_pro/models/notification_model.dart';

class NofyScreen extends StatelessWidget {
  final List<NotificationModel> data = notificationData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: data[index].operation == "quota_got"
                ? new CircleAvatar(
                    backgroundImage: NetworkImage(data[index].avatarUrl),
                    radius: 16.0,
                  )
                : new Icon(
                    Icons.card_giftcard,
                    color: Colors.redAccent,
                  ),
            title: data[index].messageType == "recieved"
                ? Text(
                    '${data[index].name} gifted you ${data[index].quotaSize}')
                : Text(
                    'You gifted ${data[index].name} a quota of ${data[index].quotaSize}'),
            subtitle: Text(data[index].timestamp),
            trailing: IconButton(
              icon: Icon(Icons.delete_outline),
              tooltip: 'Delete message',
              onPressed: () {},
            ),
          );
        });
  }
}
