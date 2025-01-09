import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../common/color_extension.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: TColor.secondary,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TColor.secondary,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Text(
              "مرحبا محـمد",
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Almarai',
                color: TColor.primaryText,
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/Ellipse 1.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Center(
          child: _image == null
              ? Text(
                  '.قم بالتقاط صورة للمنتج ورفعها هنا',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Almarai",
                    color: TColor.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                )
              : Image.file(
                  File(_image!.path),
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColor.secondary,
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(
          Icons.add_a_photo,
          color: TColor.primaryText,
        ),
      ),
    );
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }
}
