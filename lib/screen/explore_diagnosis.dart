import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/screen/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/color_extension.dart';

class ExploreDiagnosis extends StatefulWidget {
  const ExploreDiagnosis({super.key});

  @override
  State<ExploreDiagnosis> createState() => _ExploreDiagnosisState();
}

class _ExploreDiagnosisState extends State<ExploreDiagnosis> {
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
              "التشخيص",
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "الأعراض",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.details,
                  color: TColor.primary,
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'نتيجة دخول اليرقات في ثمار الرمان فإن ذلك يؤدي لتلف الثمار وتسوسها',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/Rectangle 10.png',
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          'assets/images/Rectangle 10.png',
                          fit: BoxFit.cover,
                          height: 50,
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          'assets/images/Rectangle 10.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.push(const Details());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: TColor.secondary,
              ),
              child: Text(
                'استكشف التشخيص',
                style: TextStyle(color: TColor.primaryText, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'فرانسة ثمار الرمان',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
