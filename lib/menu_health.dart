import 'package:flutter/material.dart';

class MenuHealthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/heart.png',
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(width: 16.0),
                Image.asset(
                  'images/fever.png',
                  width: 100.0,
                  height: 100.0,
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/blood-pressure.png',
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(width: 16.0),
                Image.asset(
                  'images/sleep.png',
                  width: 100.0,
                  height: 100.0,
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Health Information',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
