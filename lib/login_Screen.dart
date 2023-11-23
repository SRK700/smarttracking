import 'package:flutter/material.dart';
import 'package:smarttracking/menu_Screen.dart';
import 'package:smarttracking/register.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เข้าสู่ระบบ'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(
                    'images/tracking.png'), // เปลี่ยนเป็นที่อยู่ของรูปภาพที่คุณใช้
                width: 250.0, // กำหนดความกว้าง
                height: 250.0, // กำหนดความสูง
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'ชื่อผู้ใช้'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'รหัสผ่าน'),
                obscureText: true, // ซ่อนข้อความในรหัสผ่าน
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => MenuScreen(),
                  ));
                },
                child: Text('เข้าสู่ระบบ'),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(300, 50),
                  side: BorderSide(
                    color: Color.fromARGB(
                        255, 164, 128, 225), // Set the outline color
                    width: 2.0, // Set the outline width
                  ),
                  backgroundColor: Color.fromARGB(
                      255, 164, 128, 225), // Set the background color
                ),
              ),
              SizedBox(height: 8.0),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => RegisterUserForm(),
                  ));
                },
                child: Text('ลงทะเบียนผู้ใช้ใหม่'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
