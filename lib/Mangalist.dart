import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Mangalist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}
class _State extends State<Mangalist> {
  _State() {
    load();
  }
  void load () {
    const url = 'https://manga1000.com';
    http.get(url).then((res) {
      print(res);
    });
  }
  @override
  var list = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (context, int index) {
           return Padding(
             padding: EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text('${list[index]}')
               ],
             ),
           );
        },
      )
    );
  }
}