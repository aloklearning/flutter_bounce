import 'package:flutter/material.dart';

class BounceScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bounce with Scroll Demo', 
          style: TextStyle(color: Colors.white)),
        centerTitle: true
      ),
      body: Container()
    );
  }
}