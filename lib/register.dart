import 'package:flutter/material.dart';
import 'login_screen.dart'; // Make sure to import your login screen file

class RegisterUserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ลงทะเบียน'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Add any registration-specific fields here
              TextFormField(
                decoration: InputDecoration(labelText: 'ชื่อ'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'นามสกุล'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'อีเมล'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'รหัสผ่าน'),
                obscureText: true,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Implement registration logic here

                  // After successful registration, navigate back to the login screen
                  Navigator.of(context).pop();
                },
                child: Text('ลงทะเบียน'),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(300, 50),
                  side: BorderSide(
                    color: Color.fromARGB(255, 164, 128, 225),
                    width: 2.0,
                  ),
                  backgroundColor: Color.fromARGB(255, 164, 128, 225),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
