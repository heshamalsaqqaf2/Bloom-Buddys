import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
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
            child: IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              onPressed: () => context.pop(),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: Image.asset(
            "assets/images/Ellipse 1.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: const Center(
        child: Text("data"),
      ),
    );
  }
}
