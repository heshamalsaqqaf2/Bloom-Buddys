import 'package:bloom_buddys/screen/bottom_navigation_bar.dart';
import 'package:bloom_buddys/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/common_widget/round_button.dart';
import 'package:bloom_buddys/common_widget/round_textfield.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: context.width,
                height: context.height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Image.asset(
                        "assets/images/logo.png",
                        width: context.width * 0.35,
                        fit: BoxFit.fitWidth,
                      ),
                      Text(
                        "BLOOM BUDDY",
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 18,
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 25),
                        width: double.maxFinite,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 25,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                  offset: Offset(0, 2))
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "تسجيل الدخول",
                              style: TextStyle(
                                color: TColor.title,
                                fontSize: 32,
                                fontFamily: 'Almarai',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            RoundTextField(
                              hintText: "البريد الإلكتروني",
                              keyboardType: TextInputType.emailAddress,
                              controller: txtEmail,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            RoundTextField(
                              hintText: "كلمة المرور",
                              obscureText: true,
                              right: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/images/show_pass.png",
                                  width: 25,
                                ),
                              ),
                              controller: txtPassword,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: RoundButton(
                                  title: "تسجيل الدخول",
                                  fontWeight: FontWeight.bold,
                                  onPressed: () {
                                    context.push(const MyBottomNavigationBar());
                                  }),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context.push(const SignUpScreen());
                                  },
                                  child: Text(
                                    "إنشاء حساب جديد؟",
                                    style: TextStyle(
                                      color: TColor.primary,
                                      fontFamily: 'Almarai',
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
