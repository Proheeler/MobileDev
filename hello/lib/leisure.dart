import 'package:flutter/material.dart';
import 'settings.dart';
import 'package:geolocator/geolocator.dart';

// StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationOptions).listen(
//     (Position position) {
//         print(position == null ? 'Unknown' : position.latitude.toString() + ', ' + position.longitude.toString());
//     });

class LeisureApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return HomePage();
    return MaterialApp(
      title: 'Leisure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<PopupMenuItem<String>> menuItems = List<PopupMenuItem<String>>();
    menuItems.add(PopupMenuItem(
      value: 'Settings',
      child: Row(
        children: <Widget>[
          Icon(Icons.settings_applications),
          Text('Settings'),
        ],
      ),
    ));
    menuItems.add(PopupMenuItem(
      value: 'About',
      child: Row(
        children: <Widget>[
          Icon(Icons.help),
          Text('About'),
        ],
      ),
    ));
    menuItems.add(PopupMenuItem(
      value: 'Contact us',
      child: Row(
        children: <Widget>[
          Icon(Icons.message),
          Text('Contact us'),
        ],
      ),
    ));
    return MaterialApp(
        title: 'Leisure',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Leisure'),
              actions: [
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) {
                    return menuItems.toList();
                  },
                  color: Colors.cyan[200],
                  onSelected: (s) {
                    if (s == 'Settings') {
                      goToSettings(context);
                    } else if (s == 'About') {
                      // goToSettings(context);
                    } else if (s == 'Contact us') {
                      // goToSettings(context);
                    }
                  },
                )
              ],
            ),
            body: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Column(children: [Text("")]),
              );
            })));
  }

  void goToSettings(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SettingsScreen()));
  }
}
