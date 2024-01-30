import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smarttracking/HealthData.dart';

class DeleteHealthDataPage extends StatefulWidget {
  final Map<String, dynamic> data;

  DeleteHealthDataPage({required this.data});
  @override
  _DeleteHealthDataPageState createState() => _DeleteHealthDataPageState();
}

class _DeleteHealthDataPageState extends State<DeleteHealthDataPage> {
  Future<void> _deleteHealthData() async {
    final apiUrl = 'http://localhost:81/tracking_API/rud.php';
    final requestBody = {
      'case': '3', // '3' represents the delete case
      'id_card': widget.data,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: requestBody,
      );

      if (response.statusCode == 200) {
        showSuccessDialog(context, 'Data deleted successfully');
      } else {
        showSuccessDialog(
          context,
          'Failed to delete data. ${response.body}',
        );
      }
    } catch (error) {
      showSuccessDialog(
        context,
        'Error connecting to the server: $error',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Health Data'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Delete Health Data for ID Card: ${widget.data}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _deleteHealthData();
              },
              child: Text('Delete Data'),
            ),
          ],
        ),
      ),
    );
  }

  void showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => HealthDataPage(),
                  ),
                );
              },
              child: Text('Go to Health Data Page'),
            ),
          ],
        );
      },
    );
  }
}
