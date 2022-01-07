import 'package:doctor_consultation/context_extension.dart';
import 'package:doctor_consultation/pages/home_page.dart';
import 'package:doctor_consultation/widgets/background_clipper.dart';
import 'package:doctor_consultation/widgets/slide_page_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Color(0XFF1E1C61),
      ),
      child: Scaffold(
        backgroundColor: const Color(0XFFF9F9F9),
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: context.width * .7,
                margin: const EdgeInsets.fromLTRB(25, 110, 25, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose The Doctor You Want',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF1E1C61),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Seamlessly book appointment with specialist in various medical fields',
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, SlidePageRoute(child: const HomePage()));
                      },
                      child: Container(
                        width: 100,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0XFF1E1C61).withOpacity(0.80),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: BackgroundClipper(),
                        child: Container(
                          color: const Color(0XFF1E1C61),
                          width: context.width,
                          height: context.height * .7,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          'assets/images/doc_patient.png',
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
