import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/screen/upload_subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SellerSubscription extends StatefulWidget {
  const SellerSubscription({super.key});

  @override
  State<SellerSubscription> createState() => _SellerSubscriptionState();
}

class _SellerSubscriptionState extends State<SellerSubscription> {
  // قائمة حالات التوسيع لكل عنصر
  final List<bool> _isExpanded = [true, false, false, false, false];

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
              "معلومات الدفع",
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
          children: [
            const SizedBox(height: 36),
            const Text(
              'معلومات الدفع',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: ExpansionPanelList(
                  expandIconColor: TColor.primary,
                  dividerColor: TColor.secondary,
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _isExpanded[index] = isExpanded; // تحديث حالة العنصر
                    });
                  },
                  children: [
                    _buildPanel(
                      index: 0,
                      title: "حوالات مصرفية",
                      content: "عبدالعزيز علي حسين القاضي",
                      phoneNumber: "771022014",
                    ),
                    _buildPanel(
                      index: 1,
                      title: "بنك الكريمي",
                      content: "تفاصيل بنك الكريمي هنا.",
                      phoneNumber: "771022014",
                    ),
                    _buildPanel(
                      index: 2,
                      title: "بنك اليمن والكويت",
                      content: "تفاصيل بنك اليمن والكويت هنا.",
                      phoneNumber: "771022014",
                    ),
                    _buildPanel(
                      index: 3,
                      title: "البنك التجاري",
                      content: "تفاصيل البنك التجاري هنا.",
                      phoneNumber: "771022014",
                    ),
                    _buildPanel(
                      index: 4,
                      title: "بنك التضامن",
                      content: "تفاصيل بنك التضامن هنا.",
                      phoneNumber: "771022014",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.push(const UploadSubscribe());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColor.secondary,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text(
                  'التالي',
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.primaryText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ExpansionPanel _buildPanel({
    required int index,
    required String title,
    required String content,
    required String phoneNumber,
  }) {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: isExpanded ? TColor.secondary : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isExpanded ? Colors.black : Colors.black,
              ),
            ),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                content,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              phoneNumber,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      isExpanded: _isExpanded[index],
    );
  }
}
