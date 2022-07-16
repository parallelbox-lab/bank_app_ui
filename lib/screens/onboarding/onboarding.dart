import 'package:bank_app_ui/screens/main_screen.dart';
import 'package:bank_app_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset("assets/logo.png", width: 150),
                Expanded(
                  child: Center(
                    child: Image.asset("assets/let-swap.jpg"),
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    CustomText(
                        text: "Easy way\nto manage your money",
                        size: 33.sp,
                        weight: FontWeight.bold),
                    const SizedBox(height: 10),
                    CustomText(
                        text: "Connect your money to your friends and family",
                        size: 15.sp,
                        color: Colors.grey,
                        weight: FontWeight.w700),
                  ],
                )),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      primary: Colors.white,
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const MainScreen()));
                    },
                    child: CustomText(text: "Get Started", size: 13.sp),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
