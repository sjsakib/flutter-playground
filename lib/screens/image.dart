import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageScreen extends StatefulWidget {
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File _image;
  double _scale;
  int _width;

  Future selectImage() async {
    var imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      var image = img.decodeImage(imageFile.readAsBytesSync());
      setState(() {
        _image = imageFile;
        _width = image.width;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;

    if (_width != null) {
      print(_width / size);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Image Tes'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Select Image'),
            onPressed: selectImage,
          ),
          if (_image != null)
            Stack(
              children: <Widget>[
                Container(
                  width: size,
                  height: size,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.file(
                    _image,
                    scale: _width / size,
                    fit: BoxFit.none,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
