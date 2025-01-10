import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import '../common_widget/card.dart';
import '../common_widget/round_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPlants extends StatefulWidget {
  const MyPlants({super.key});

  @override
  State<MyPlants> createState() => _MyPlantsState();
}

class _MyPlantsState extends State<MyPlants> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: TColor.secondary,
    ));
    return SafeArea(
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: TColor.secondary,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: TColor.secondary,
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                child: Text(
                  "خططي",
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  RoundTextField(
                    hintText: "...إبحث عن أي شي",
                    keyboardType: TextInputType.text,
                    right: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: TColor.primary,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                  const PlantCard(
                    imageUrl: 'assets/images/Rectangle 8.png',
                    title: 'الخطة رقم 1 في الحساب',
                  ),
                  const SizedBox(height: 16),
                  const PlantCard(
                    imageUrl: 'assets/images/Rectangle 9.png',
                    title: 'الخطة رقم 2 في الحساب',
                  ),
                  const SizedBox(height: 16),
                  const PlantCard(
                    imageUrl: 'assets/images/Rectangle 9.png',
                    title: 'الخطة رقم 2 في الحساب',
                  ),
                  const SizedBox(height: 16),
                  const PlantCard(
                    imageUrl: 'assets/images/Rectangle 9.png',
                    title: 'الخطة رقم 2 في الحساب',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
