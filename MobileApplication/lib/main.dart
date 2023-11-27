import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import '/mobile.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final camera = await getFirstCamera();
  runApp(
    MaterialApp(
      title: 'Dynamsoft Barcode Reader',
      home: MyHomePage(camera: camera),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  final CameraDescription camera; // CameraDescription object passed in

  const MyHomePage({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Function Button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Perform your mobile function here
            // For example, if you want to open the camera:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Mobile(camera: camera),
              ),
            );
          },
          child: Text('Open Camera'),
        ),
      ),
    );
  }
}

Future<CameraDescription> getFirstCamera() async {
  final cameras = await availableCameras();
  return cameras.first;
}

