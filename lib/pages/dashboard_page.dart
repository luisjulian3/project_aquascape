import 'package:flutter/material.dart';

import '../widgets/dashboard_widgets.dart';
import '../widgets/reuse_widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Dasboard'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            //Lampu
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardLampu(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.lightbulb_outline,
                    size: 70,
                    color: Colors.yellowAccent,
                  ),
                  Text("Lampu", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Sensor PH
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.sensors,
                    size: 70,
                    color: Colors.redAccent,
                  ),
                  Text("Sensor PH", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Temperature
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardTemperature(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.thermostat,
                    size: 70,
                    color: Colors.greenAccent,
                  ),
                  Text("Temperature", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Fish Feeder
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardFishFeeder(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.restaurant,
                    size: 70,
                    color: Colors.blueAccent,
                  ),
                  Text("Fish Feeder", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
