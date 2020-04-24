import 'package:flutter/material.dart';

class NavigationTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Test'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is a second screen'),
              Hero(
                tag: 'text',
                child: RaisedButton(
                  child: Text('Next'),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdScreen()))
                  },
                ),
              ),
            ]),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Test 2'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('This is a third screen'),
              Hero(
                tag: 'text',
                child: RaisedButton(
                  child: Text('Next'),
                  onPressed: () => {Navigator.pop(context)},
                ),
              ),
            ]),
      ),
    );
  }
}
