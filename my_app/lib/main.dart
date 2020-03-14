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
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("hi"),
        ),
      ),
    );
  }
}