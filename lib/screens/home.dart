import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playground Home'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('Navigation'),
                onPressed: () {
                  Navigator.pushNamed(context, '/navigatoin-test');
                },
              )
            ]),
      ),
    );
  }
}
