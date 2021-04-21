import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _AnimatedCrossFadeExample(),
    );
  }
}

class _AnimatedCrossFadeExample extends StatefulWidget {
  @override
  _AnimatedCrossFadeExampleState createState() =>
      new _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<_AnimatedCrossFadeExample> with TickerProviderStateMixin {
    AnimationController _controller;
    Animation<Offset> _animation;

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Builder(
          builder: (context) => Center(
            child: SlideTransition(
              position: _animation,
              transformHitTests: true,
              textDirection: TextDirection.ltr,
              child: RaisedButton(
                child: Text('Woolha.com'),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Button is pressed'))
                  );
                },
              ),
            ),
          )
      ),
    );
  }
}