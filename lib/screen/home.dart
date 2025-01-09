import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:bloom_buddys/common_widget/link_button.dart';
import 'package:bloom_buddys/screen/my_plants.dart';
import '../common_widget/round_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<ImageData> imageDataList = [
      ImageData(imagePath: "assets/images/Rectangle 8.png", name: "Image 1"),
      ImageData(imagePath: "assets/images/Rectangle 7.png", name: "Image 2"),
      ImageData(imagePath: "assets/images/Rectangle 9.png", name: "Image 3"),
      ImageData(imagePath: "assets/images/Rectangle 10.png", name: "Image 4"),
    ];
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
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
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
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/Ellipse 1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const SizedBox(height: 25),
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinkButton(
                        title: "عرض الكل",
                        txtColor: TColor.primary,
                        onPressed: () {
                          context.push(const MyPlants());
                        },
                      ),
                      Text(
                        "خططي",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Almarai',
                          color: TColor.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: imageDataList.map((imageData) {
                    return Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(imageData.imagePath),
                          const SizedBox(height: 8.0),
                          Text(imageData.name),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LinkButton(
                        title: "عرض الكل",
                        onPressed: showCustomDialog,
                        txtColor: TColor.primary,
                      ),
                      Text(
                        "نصائح",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Almarai',
                          color: TColor.secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: TColor.secondary,
                  child: Column(
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'الوقت الفغلي للعملية المطلوية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: TColor.primaryText,
                          ),
                        ),
                        subtitle: Text(
                          '6:00 - 9:00 AM',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: TColor.secondaryText,
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: TColor.secondary,
                  child: Column(
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'الوقت الفغلي للعملية المطلوية',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: TColor.primaryText,
                          ),
                        ),
                        subtitle: Text(
                          '6:00 - 9:00 AM',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: TColor.secondaryText,
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showCustomDialog() async {
    return await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            title: Text(
              'عنوان الرسالة',
              style: TextStyle(
                color: TColor.primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Almarai',
              ),
            ),
            content: SizedBox(
              height: 200,
              width: 260,
              child: FutureBuilder(
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          snapshot.data!,
                          style: TextStyle(color: TColor.primaryText),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 55,
                          height: 55,
                          child: CircularProgressIndicator(
                            color: TColor.secondary,
                          ),
                        ),
                      ],
                    );
                  }
                },
                future: fetchData(),
              ),
            ),
            actions: [
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => TColor.secondary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(
                        color: TColor.secondary,
                      ),
                    ),
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: Text(
                  'إغلاق',
                  style: TextStyle(color: TColor.primaryText),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<String> fetchData() async {
    String stringReturn = 'لا توجد بيانات';
    await Future.delayed(const Duration(milliseconds: 4000)).then((value) {
      stringReturn = 'نص الرسالة بعد عملية تحميل البيانات';
    });
    return stringReturn;
  }
}

class ImageData {
  final String imagePath;
  final String name;

  ImageData({
    required this.imagePath,
    required this.name,
  });
}
