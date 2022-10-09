import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_aquascape/widgets/reuse_widgets.dart';

class DashboardLampu extends StatefulWidget {
  const DashboardLampu({super.key});

  @override
  State<DashboardLampu> createState() => _DashboardLampuState();
}

class _DashboardLampuState extends State<DashboardLampu> {
  bool _switch = false;
  ThemeData _dark =
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.white);
  ThemeData _light =
      ThemeData(brightness: Brightness.light, primaryColor: Colors.black);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        appBar: CustomAppBar(
          title: ('Dasboard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.lightbulb_circle_outlined,
                size: 100,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Switch(
                  value: _switch,
                  onChanged: (_newvalue) {
                    setState(() {
                      _switch = _newvalue;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardFishFeeder extends StatefulWidget {
  const DashboardFishFeeder({super.key});

  @override
  State<DashboardFishFeeder> createState() => _DashboardFishFeeder();
}

class _DashboardFishFeeder extends State<DashboardFishFeeder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Fish Feeder'),
      ),
    );
  }
}

class DashboardTemperature extends StatefulWidget {
  const DashboardTemperature({Key? key}) : super(key: key);

  @override
  State<DashboardTemperature> createState() => _DashboardTemperatureState();
}

class _DashboardTemperatureState extends State<DashboardTemperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Temperature'),
      ),
      body: Center(
        child: CircularPercentIndicator(
          animation: true,
          animationDuration: 500,
          radius: 100,
          lineWidth: 10,
          percent: 0.5,
          progressColor: Colors.red,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(
            '50',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
