import 'dart:io';

import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadSubscribe extends StatefulWidget {
  const UploadSubscribe({super.key});

  @override
  State<UploadSubscribe> createState() => _UploadSubscribeState();
}

class _UploadSubscribeState extends State<UploadSubscribe> {
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
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            child: Text(
              "رفع بيانات الإشتراك",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: TColor.primaryText,
              ),
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: TColor.primaryText,
          ),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 44),
              const Text(
                "الإشتراك",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: getImage,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: TColor.secondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _image == null
                            ? Text(
                                '.قم بالتقاط صورة ورفعها هنا',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Almarai",
                                  color: TColor.primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Image.file(
                                fit: BoxFit.cover,
                                height: 230,
                                width: double.infinity,
                                File(_image!.path),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              _buildTextField(
                icon: Icons.person,
                hintText: "الإسم الشخصي",
              ),
              const SizedBox(height: 16),
              _buildTextField(
                icon: Icons.phone,
                hintText: "رقم الهاتف",
              ),
              const SizedBox(height: 16),
              _buildTextField(
                icon: Icons.calendar_today,
                hintText: "تاريخ الميلاد",
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColor.secondary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "إرسال البيانات",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: TColor.primaryText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required IconData icon, required String hintText}) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(icon, color: TColor.secondary),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: TColor.secondary),
          ),
        ),
      ),
    );
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
}
