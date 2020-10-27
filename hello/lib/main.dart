import 'package:flutter/material.dart';
import 'buttons.dart';
import 'leisure.dart';

void main() {
  runApp(LeisureApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _startMeasure;
  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces',
  ];
  final double defaultPadding = 5.0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at skemobob@gmail.com'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void emptyMethod() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Travel App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Travel App"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(
                builder: (context) => SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                                Expanded(
                                    child: ProductivityButton(
                                        color: Color(0xff009688),
                                        text: "Work",
                                        onPressed: emptyMethod)),
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                                Expanded(
                                    child: ProductivityButton(
                                        color: Color(0xff607D8B),
                                        text: "Short Break",
                                        onPressed: emptyMethod)),
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                                Expanded(
                                    child: ProductivityButton(
                                        color: Color(0xff455A64),
                                        text: "Long Break",
                                        onPressed: emptyMethod)),
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Hello World Travel',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[800]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Discover the World',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Colors.blue,
                                        blurRadius: 10,
                                        spreadRadius: 2)
                                  ]),
                                  child: Image.network(
                                    'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                                    height: 350,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: RaisedButton(
                                  child: Text('Contact Us'),
                                  onPressed: () => contactUs(context)),
                            ),
                            DropdownButton(
                              items: _measures.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              value: _startMeasure,
                              onChanged: (value) {
                                setState(() {
                                  _startMeasure = value;
                                });
                              },
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                                Expanded(
                                    child: ProductivityButton(
                                        color: Color(0xff212121),
                                        text: 'Stop',
                                        onPressed: emptyMethod)),
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                                Expanded(
                                    child: ProductivityButton(
                                        color: Color(0xff009688),
                                        text: 'Restart',
                                        onPressed: emptyMethod)),
                                Padding(
                                  padding: EdgeInsets.all(defaultPadding),
                                ),
                              ],
                            )
                          ],
                        )))))));
  }
}
