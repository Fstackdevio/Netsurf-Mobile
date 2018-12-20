import 'package:flutter/material.dart';
import 'package:netsurf_pro/models/trans_model.dart';

class TransCard extends StatelessWidget {
  final List<TransModel> data = transData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: new Text('data'),
        );
      },
    );
  }
}
