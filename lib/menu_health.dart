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
            Image.asset(
              'images/health_icon.png', // Adjust the path accordingly
              width: 200.0, // Adjust the width as needed
              height: 200.0, // Adjust the height as needed
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
