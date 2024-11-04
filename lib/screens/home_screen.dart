import 'package:flutter/material.dart';
import '../web_camera.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isFaceDetected = false;

  void _onFaceDetected(bool faceDetected) {
    setState(() {
      _isFaceDetected = faceDetected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SiJaga App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WebCamera(onFaceDetected: _onFaceDetected),
            SizedBox(height: 20),
            Text(
              _isFaceDetected ? 'Face Detected!' : 'No Face Detected',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}