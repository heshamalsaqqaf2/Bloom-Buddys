import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/screen/languages.dart';
import 'package:bloom_buddys/screen/notification.dart';
import 'package:bloom_buddys/screen/subscription.dart';
import 'package:bloom_buddys/screen/users_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/color_extension.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
          padding: const EdgeInsets.all(0),
          child: IconButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                headerAnimationLoop: false,
                animType: AnimType.bottomSlide,
                btnCancelText: "إلغاء",
                btnOkText: "موافق",
                title: 'خطأ',
                desc:
                    'إما أن النموذج لا يدعم الكائنات أو النباتات في الصورة أو أن الصورة غير واضحة.',
                buttonsTextStyle: const TextStyle(color: Colors.black),
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
            icon: Image.asset(
              "assets/images/Ellipse 1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    height: context.width * 0.5,
                    decoration: BoxDecoration(
                      color: TColor.secondary,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.14),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35),
                      width: double.maxFinite,
                      height: context.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.17),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: double.maxFinite,
                      height: context.width * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.2),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 2),
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: context.width * 0.22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_4,
                                  color: TColor.primary, size: 25),
                              const SizedBox(width: 8),
                              Text(
                                "name@gmail.com",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: TColor.secondaryText,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "UserName Johan",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Divider(color: Colors.black12, height: 1),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.width * 0.08),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius:
                              BorderRadius.circular(context.width * 0.3),
                          border: Border.all(color: Colors.white, width: 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(context.width * 0.3),
                        child: Image.asset(
                          "assets/images/Ellipse 1.png",
                          width: context.width * 0.3,
                          height: context.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.push(const Languages());
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: TColor.secondary,
                        child: Column(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "اللغات",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: TColor.primaryText,
                                    ),
                                  ),
                                  Icon(
                                    Icons.language,
                                    color: TColor.primaryText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const UsersInformations());
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: TColor.secondary,
                        child: Column(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "كلمة المرور",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: TColor.primaryText,
                                    ),
                                  ),
                                  Icon(
                                    Icons.password,
                                    color: TColor.primaryText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const MyNotification());
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: TColor.secondary,
                        child: Column(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "الإشعارات",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: TColor.primaryText,
                                    ),
                                  ),
                                  Icon(
                                    Icons.notifications_active,
                                    color: TColor.primaryText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.push(const Subscription());
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: TColor.secondary,
                        child: Column(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "الإشتراك",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: TColor.primaryText,
                                    ),
                                  ),
                                  Icon(
                                    Icons.subscriptions,
                                    color: TColor.primaryText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.warning,
                          headerAnimationLoop: false,
                          animType: AnimType.bottomSlide,
                          btnCancelText: "إلغاء",
                          btnOkText: "موافق",
                          title: 'تسجيل الخروج',
                          desc:
                              'هل أنت متأكد من تسجيل خروجك',
                          buttonsTextStyle:
                              const TextStyle(color: Colors.black),
                          showCloseIcon: true,
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        ).show();
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: TColor.secondary,
                        child: Column(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "تسجيل الخروج",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: TColor.primaryText,
                                    ),
                                  ),
                                  Icon(
                                    Icons.logout_outlined,
                                    color: TColor.primaryText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "مواقع التواصل الإجتماعي",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.apps_rounded,
                            size: 35,
                            color: TColor.primary,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.telegram,
                            size: 35,
                            color: TColor.primary,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.message_rounded,
                            size: 35,
                            color: TColor.primary,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(context.width * 0.3),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: context.width * 0.3,
                          height: context.width * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
