// export PATH="$PATH:/Users/donghyeonjeong/Desktop/flutter/bin"

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'cameraHome.dart';
import 'circleButton.dart';


void main() => runApp(CameraApp());

class CameraApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CameraState();
  }
}

class CameraState extends State<CameraApp> {
  File image;
  picker() async {
    print("picker is called"); 
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      image = img;
      print(img.path);
      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("Image Picker"),
        ),
        body: new Container(
          child: new Center(
            child: image == null ? new Text("no image to display") : new Image.file(image),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: picker, 
          child: new Icon(Icons.camera_alt)
        ), 
      ),
    );
  }
}