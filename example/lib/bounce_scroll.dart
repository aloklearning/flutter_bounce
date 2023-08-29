import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class BounceScroll extends StatelessWidget {
  //This is the widget for showing up in scroll
  List<Widget> get verticalList {
    List<Widget> _widget = [SizedBox(height: 20.0)];

    for (int i = 0; i < 10; i++) {
      _widget.add(verticalListCards);
      _widget.add(SizedBox(height: 10.0));
    }

    return _widget;
  }

  //This is the widget
  Widget get verticalListCards {
    return Bounce(
        duration: Duration(milliseconds: 110),
        onPressed: () {},
        child: Container(
            height: 80.0,
            decoration: BoxDecoration(
                color: Colors.indigo[400],
                borderRadius: BorderRadius.circular(10.0))));
  }

  //This is for horizontal list
  List<Widget> get horizontalList {
    List<Widget> _view = [SizedBox(width: 20.0)];

    for (int i = 0; i < 10; i++) {
      _view.add(horizontalListWidget);
      _view.add(SizedBox(width: 10.0));
    }

    return _view;
  }

  Widget get horizontalListWidget {
    return Bounce(
        duration: Duration(milliseconds: 110),
        onPressed: () {},
        child: Container(
            height: 70.0,
            width: 200.0,
            decoration: BoxDecoration(
                color: Colors.indigo[400],
                borderRadius: BorderRadius.circular(10.0))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Bounce with Scroll Demo',
                style: TextStyle(color: Colors.white)),
            centerTitle: true),
        body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: this.verticalList)),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: this.horizontalList)))
            ]));
  }
}
