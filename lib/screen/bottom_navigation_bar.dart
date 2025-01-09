import 'package:bloom_buddys/provider.dart';
import 'package:bloom_buddys/screen/home.dart';
import 'package:bloom_buddys/screen/image_picker.dart';
import 'package:bloom_buddys/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyBottomNavigationBar extends ConsumerWidget {
  const MyBottomNavigationBar(
      {super.key,
      int? currentIndex,
      Null Function(dynamic value)? onTap,
      List<BottomNavigationBarItem>? items});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodies = [
      const Home(),
      const Productdetails(),
      const Settings(),
    ];
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        onTap: (value) {
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_rounded), label: 'المنتج'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'الإعدادات'),
        ],
      ),
      body: bodies[indexBottomNavbar],
    );
  }
}
