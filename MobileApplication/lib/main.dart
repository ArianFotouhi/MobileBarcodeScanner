import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter_barcode_sdk_example/mobile.dart';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final camera = await getFirstCamera();
  runApp(
    MaterialApp(
      title: 'Dynamsoft Barcode Reader',
      home: Scaffold(
        body: Mobile(camera: camera),
      ),
    ),
  );
}

Future<CameraDescription> getFirstCamera() async {
  final cameras = await availableCameras();
  return cameras.first;
}

