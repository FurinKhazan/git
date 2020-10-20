import 'package:flutter/material.dart';

import './halHeadset.dart' as headset;
import './halKomputer.dart' as komputer;
import './halRadio.dart' as radio;
import './halSmartphone.dart' as smartphone;

void main() {
  runApp(new MaterialApp(
    title: "Dispa Corner Application",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Laporan Dispa Skh"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
              text: "Komputer",
            ),
            new Tab(
              icon: new Icon(Icons.headset),
              text: "Headset",
            ),
            new Tab(
              icon: new Icon(Icons.radio),
              text: "Radio",
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
              text: "Handphone",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new smartphone.Smartphone()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.redAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.computer),
            ),
            new Tab(
              icon: new Icon(Icons.headset),
            ),
            new Tab(
              icon: new Icon(Icons.radio),
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
