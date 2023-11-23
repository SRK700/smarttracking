import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController _imeiController = TextEditingController();
  TextEditingController _deviceNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _imeiController,
              decoration: InputDecoration(labelText: 'IMEI Number'),
            ),
            SizedBox(height: 8.0),
            TextFormField(
              controller: _deviceNameController,
              decoration: InputDecoration(labelText: 'Device Name'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String newImei = _imeiController.text;
                String newDeviceName = _deviceNameController.text;
              },
              child: Text('Update Settings'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
