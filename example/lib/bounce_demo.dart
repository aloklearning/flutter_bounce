import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class SimpleBounceDemo extends StatefulWidget {
  @override
  SimpleBounceDemoState createState() => SimpleBounceDemoState();
}

class SimpleBounceDemoState extends State<SimpleBounceDemo> {
  int _duration = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Simple Bounce Demo',
                style: TextStyle(color: Colors.white)),
            centerTitle: true),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Bounce(
            onPressed: () {},
            duration: Duration(milliseconds: _duration),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.add, color: Colors.white)),
            ),
          ),
          SizedBox(height: 30.0),
          Bounce(
              duration: Duration(milliseconds: _duration),
              onPressed: () {},
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(80.0)),
                  child: Center(
                      child: Text('Click to bounce',
                          style: TextStyle(
                              color: Colors.white, fontSize: 18.0))))),
          SizedBox(height: 20.0),
          Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Slider(
                  activeColor: Theme.of(context).primaryColor,
                  min: 50,
                  max: 300,
                  value: _duration.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _duration = newValue.toInt();
                    });
                  })),
          Center(
              child: Text("Duration = $_duration ms",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                  )))
        ])));
  }
}
