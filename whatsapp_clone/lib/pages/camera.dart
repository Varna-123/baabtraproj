import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription> camera;

class Camera extends StatefulWidget {
  Camera({Key key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController _cameraController;
  var cameraValue;

  @override
  void initState() {
    super.initState();
    _cameraController =
        CameraController(camera[0], ResolutionPreset.high); //0 backcamera

    cameraValue = _cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FutureBuilder(
          future: cameraValue,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_cameraController);
            }
            return CircularProgressIndicator();
          },
        )
      ],
    ));
  }
}
