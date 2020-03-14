// export PATH="$PATH:/Users/donghyeonjeong/Desktop/flutter/bin"

import 'package:flutter/material.dart';

void main() => runApp(CameraApp());

class CameraApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CameraState();
  }
}

class CameraState extends State<CameraApp> {
  picker(){
    print("picker is called"); 
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
            child: new Text("No image to display"),
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