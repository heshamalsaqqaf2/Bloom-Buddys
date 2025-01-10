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
  bool isSwitched = true;
  bool isSwitched2 = false;
  bool isSwitched3 = true;
  bool isSwitched4 = false;
  var textValue = 'OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'ON';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'OFF';
      });
    }
  }

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
              "الإشعارات",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: TColor.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched,
                              activeColor: TColor.primary,
                              activeTrackColor: TColor.primary,
                              inactiveThumbColor: TColor.secondaryText,
                              inactiveTrackColor: TColor.secondaryText,
                            ),
                          ),
                          const Text(
                            'تفعيل إشعارات الإيميل',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: TColor.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched2,
                              activeColor: TColor.primary,
                              activeTrackColor: TColor.primary,
                              inactiveThumbColor: TColor.secondaryText,
                              inactiveTrackColor: TColor.secondaryText,
                            ),
                          ),
                          const Text(
                            'تفعيل جميع الإشعارات',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: TColor.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched3,
                              activeColor: TColor.primary,
                              activeTrackColor: TColor.primary,
                              inactiveThumbColor: TColor.secondaryText,
                              inactiveTrackColor: TColor.secondaryText,
                            ),
                          ),
                          const Text(
                            'إرسال الإشعارات',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: TColor.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: isSwitched4,
                              activeColor: TColor.primary,
                              activeTrackColor: TColor.primary,
                              inactiveThumbColor: TColor.secondaryText,
                              inactiveTrackColor: TColor.secondaryText,
                            ),
                          ),
                          const Text(
                            'الإقتراحات',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Almarai',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
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
