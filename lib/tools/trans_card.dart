import 'package:flutter/material.dart';
import 'package:netsurf_pro/models/trans_model.dart';

class TransCard extends StatelessWidget {
  final List<TransModel> data = transData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          height: 300.0,
          width: 270.0,
          child: new Card(
              elevation: 3.0,
              color: data[index].status == 'success'
                  ? Colors.green[400]
                  : Colors.red[500],
              clipBehavior: Clip.hardEdge,
              child: new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 15.0),
                    child: new CircleAvatar(
                      radius: 15.0,
                      child: new Text(data[index].month[0]),
                    ),
                  ),
                  new Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(
                          bottom: 10.0, top: 20.0, left: 5.0, right: 5.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(data[index].date),
                              new Text(data[index].month),
                              new Text(data[index].year)
                            ],
                          ),
                          new Center(
                              child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              data[index].status == 'success'
                                  ? Text(
                                      'Your attempt to buy ' +
                                          data[index].quotaSize +
                                          ' for ' +
                                          data[index].amount +
                                          ' was sucessful',
                                      style: new TextStyle(fontSize: 15.0))
                                  : Text(
                                      'Your attempt to buy ' +
                                          data[index].quotaSize +
                                          ' for ' +
                                          data[index].amount +
                                          ' was unsucessful',
                                      style: new TextStyle(fontSize: 15.0)),
                              Text(data[index].timeStamp)
                            ],
                          ))
                        ],
                      ))
                ],
              )),
        );
      },
    );
  }
}
