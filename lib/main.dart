import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(KanbanApp());
}

class KanbanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildButtonColumn(color, Icons.call, 'My Plans'),
          _buildButtonColumn(color, Icons.near_me, 'Visited Places'),
          _buildButtonColumn(color, Icons.share, 'Share experience'),
        ],
      ),
    );

    return MaterialApp(
      title: 'My Journeys',
      home: Scaffold(
        appBar: AppBar(
            title: new Center(
                child: new Text(
          'My Journeys',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Raleway',
            fontSize: 22.0,
          ),
        ))),
        body: Column(
          children: <Widget>[
            Stack(children: [
              Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/koster.jpg',
                    // width: 600,
                    // height: 240,
                    fit: BoxFit.fill,
                  )),
              // titleSection,
              // buttonSection,
              // textSection,
              _buildButtonColumn(color, Icons.ac_unit, "Let's travel")
            ]),
          ],
        ),
      ),
    );
  }

  Row _buildButtonColumn(Color color, IconData icon, String label) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color),
        // Container(
        // alignment: Alignment.center,
        // child:
        FlatButton(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          onPressed: () {},
          color: Colors.blue[300],
          child: Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Raleway',
              fontSize: 22.0,
            ),
          ),
        ),
        // ),
      ],
    );
  }
}
