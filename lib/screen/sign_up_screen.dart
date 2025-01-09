import 'package:flutter/material.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/screen/sign_in_screen.dart';
import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common_widget/round_button.dart';
import 'package:bloom_buddys/common_widget/round_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "إنشاء الحساب",
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
                          hintText: "اسم المستخدم",
                          keyboardType: TextInputType.name,
                          controller: txtUsername,
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
                        RoundTextField(
                          hintText: "تأكيد كلمة المرور",
                          obscureText: true,
                          right: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/show_pass.png",
                              width: 25,
                            ),
                          ),
                          controller: txtConfirmPassword,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: RoundButton(
                              title: "إنشاء حسابك الأن",
                              fontWeight: FontWeight.bold,
                              onPressed: () {
                                context.push(const SignInScreen());
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.push(const SignInScreen());
                              },
                              child: Text(
                                "لديك حساب قم باتسجيل الدخول",
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
    );
  }
}
