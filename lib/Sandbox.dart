import 'package:flutter/material.dart';

class sandBox extends StatefulWidget {
  @override
  _sandBoxState createState() => _sandBoxState();
}

class _sandBoxState extends State<sandBox> {
  double _width = 200;
  double _margin = 15;
  Color _color = Colors.grey;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SandBox'),
      ),
      body: AnimatedContainer(
        curve: Curves.bounceInOut,
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text('Animated Margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 300;
                });
              },
              child: Text('Animated Width'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.indigoAccent;
                });
              },
              child: Text('Animated Color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('Animated Opacity'),
            ),
            AnimatedOpacity(
              curve: Curves.bounceIn,
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                'Hide Text',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
