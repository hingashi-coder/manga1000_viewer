import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Mangalist.dart';

class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manga1000Viewer'),
        ),
        body: Container(
            child: SingleChildScrollView(
                child: Column(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/episode");
                  },
                  color: Colors.blue,
                  child: Text(
                    'move',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Mangalist()
              ],
            ))));
  }
}
