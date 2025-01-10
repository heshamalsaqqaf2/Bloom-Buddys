import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/common_widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../common/color_extension.dart';
import '../common_widget/round_textfield.dart';

class UsersInformations extends StatefulWidget {
  const UsersInformations({super.key});

  @override
  State<UsersInformations> createState() => _UsersInformationsState();
}

class _UsersInformationsState extends State<UsersInformations> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  final List<String> _locations = ['مجاني', 'بلا حدود'];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: TColor.secondary,
    ));
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: TColor.secondary,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
              child: Text(
                "الملف الشخصي",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Text(
                  "عــــام",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: TColor.primaryText,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    RoundTextField(
                      hintText: "اسم المستخدم",
                      keyboardType: TextInputType.name,
                      controller: txtUsername,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Text(
                  "معلومات الحســــاب",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: TColor.primaryText,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 25),
                    RoundTextField(
                      hintText: "اسم المستخدم",
                      keyboardType: TextInputType.name,
                      controller: txtUsername,
                    ),
                    const SizedBox(height: 25),
                    RoundTextField(
                      hintText: "البريد الإلكتروني",
                      keyboardType: TextInputType.emailAddress,
                      controller: txtEmail,
                    ),
                    const SizedBox(height: 25),
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
                    const SizedBox(height: 15),
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
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: RoundButton(
                    title: "حفظ التعديلات",
                    fontWeight: FontWeight.bold,
                    onPressed: () {}),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                child: Text(
                  "الإشــتراك",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: TColor.primaryText,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                child: DropdownButton<String>(
                    items: _locations.map((String val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    }).toList(),
                    hint: const Text("تحديد نوع الإشتراك الحالي في الباقة"),
                    onChanged: (newVal) {
                      setState(() {});
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
