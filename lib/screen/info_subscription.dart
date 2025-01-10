import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:flutter/material.dart';

class InfoSubscription extends StatefulWidget {
  const InfoSubscription({super.key});

  @override
  State<InfoSubscription> createState() => _InfoSubscriptionState();
}

class _InfoSubscriptionState extends State<InfoSubscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: TColor.secondary,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
            child: Text(
              "معلومات الإشتراك",
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
    );
  }
}
