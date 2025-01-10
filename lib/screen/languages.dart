import 'package:bloom_buddys/common/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/color_extension.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  int _groupValue = -1;

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
              "اللغات",
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: TColor.secondary,
                    child: Column(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        RadioListTile(
                          value: -1,
                          groupValue: _groupValue,
                          title: const Text(
                            "اللغة العربية",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue!),
                          activeColor: TColor.primary,
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: TColor.secondary,
                    child: Column(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        RadioListTile(
                          value: 1,
                          groupValue: _groupValue,
                          title: const Text(
                            "اللغة الإنجليزية",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue!),
                          activeColor: TColor.primary,
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: TColor.secondary,
                    child: Column(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        RadioListTile(
                          value: 0,
                          groupValue: _groupValue,
                          title: const Text(
                            "اللغة التركية",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue!),
                          activeColor: TColor.primary,
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: TColor.secondary,
                    child: Column(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        RadioListTile(
                          value: -2,
                          groupValue: _groupValue,
                          title: const Text(
                            "اللغة الصينية",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue!),
                          activeColor: TColor.primary,
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: TColor.secondary,
                    child: Column(
                      children: [
                        const ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                        ),
                        RadioListTile(
                          value: -3,
                          groupValue: _groupValue,
                          title: const Text(
                            "اللغة الروسية",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue!),
                          activeColor: TColor.primary,
                          selected: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
