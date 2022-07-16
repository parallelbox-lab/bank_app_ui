import 'package:bank_app_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          // const  SizedBox(height: 20,),
            Image.asset("assets/logo.png",width:180),
         Expanded(
           child: Center(
            child: Image.asset("assets/let-swap.jpg"),
           ),
         ),
         CustomText(text: "Easy way\nto manage your money",size:33.sp,weight:FontWeight.bold),
         const SizedBox(height:10),
         CustomText(text: "Connect your money to your friemds and brands",size:15.sp,color:Colors.grey,weight:FontWeight.w700),
         Container(
          width: double.infinity,
          alignment: Alignment.bottomLeft,
          child: TextButton(
            onPressed: (){},
            child: Text("Get Started"),
          ),
         )
            ],
          ),
        ),
      )
    );
  }
}