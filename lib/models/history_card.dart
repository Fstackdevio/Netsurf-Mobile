import 'package:flutter/material.dart';
import 'package:netsurf_pro/models/login_history_model.dart';

class HistoryCard extends StatefulWidget {
  @override
  _HistoryCardState createState() => new _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  final List<LoginHistoryModel> data = historyData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    //height: 100,
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.rectangle
                        //boxShadow:
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.schedule),
                            title: new Text(data[index].startTime +
                                '-' +
                                data[index].endTime),
                          ),
                          ListTile(
                            trailing: Icon(Icons.room),
                            title: new Text(data[index].location),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
