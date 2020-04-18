import 'package:flutter/material.dart';
import './bounce_demo.dart';
import './bounce_scroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bounce',
      theme: ThemeData(
        //primarySwatch: Colors.indigo[400],
        primaryColor: Colors.indigo[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Bounce Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){ Navigator.push(context, new MaterialPageRoute(
                builder: (context) => SimpleBounceDemo())
              ); },
              elevation: 5.0,
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('Simple Bounce Demo')
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              elevation: 5.0,
              onPressed: (){ Navigator.push(context, new MaterialPageRoute(
                builder: (context) => BounceScroll())); },
              textColor: Colors.white,
              color: Theme.of(context).primaryColor,
              child: Text('Bounce with Scroll')
            )
          ]
        )
       ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
