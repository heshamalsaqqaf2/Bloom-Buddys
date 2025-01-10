import 'package:bloom_buddys/common/color_extension.dart';
import 'package:bloom_buddys/common/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
              "التفاصيل",
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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50, bottom: 15, left: 0, right: 0),
                    child: Image.asset(
                      'assets/images/Rectangle 8.png',
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "المعلومات",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: TColor.primary,
                    ),
                  ),
                  Text(
                    "الوقاية",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: TColor.primary,
                    ),
                  ),
                  Text(
                    "المكافحة",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: TColor.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30.0),
                child: Text(
                  "القطيفة هي نباتات مزهرة سنوية نابضة بالحياة من جنس Tagetes وأحيانًا آذريون. تشتهر أزهار القطيفة بظلال من اللون الأصفر والبرتقالي والأحمر، وهي خيار شائع في الحدائق وتنسيقات الأزهار بسبب ألوانها الزاهية وفترة ازدهارها الممتدة. بالإضافة إلى جاذبيتها الزينة، تخدم القطيفة أغراضًا عملية، فهي تستخدم كطارد طبيعي للآفات لردع الحشرات مثل المن والديدان الخيطية، والآذريون هو نوع من القطيفة. يتم تقديره في طب الأعشاب لخصائصه المضادة للالتهابات وعلاج الجلد. للعناية بأزهار القطيفة، تأكد من تعرضها لأشعة الشمس المباشرة لمدة 6 إلى 8 ساعات يوميًا وسقيها عندما تشعر بالجفاف في الجزء العلوي من التربة، مما يوفر سقيًا عميقًا مع تجنب التشبع بالمياه. إنها تزدهر في درجات حرارة تتراوح من 60 درجة فهرنهايت إلى 75 درجة فهرنهايت (15 درجة مئوية إلى 24 درجة مئوية) ويجب حمايتها من الصقيع. إن زراعتها في تربة جيدة التصريف ستدعم صحتها وتشجع الإزهار النابض بالحياة طوال الوقت موسم النمو.",
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    onPressed: () => {},
                    child: Text(
                      'الرجوع',
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
                    onPressed: () {},
                    child: Text(
                      'التالي الى الوقاية',
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
