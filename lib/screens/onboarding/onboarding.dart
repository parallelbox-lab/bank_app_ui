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
          padding: const EdgeInsets.symmetric(horizontal:21.0,vertical:11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const  SizedBox(height: 20,),
            Image.asset("assets/logo.png",width:180),
         Expanded(
           child: Center(
            child: Image.asset("assets/let-swap.jpg"),
           ),
         ),
         Expanded(child: Column(
           children: [
             CustomText(text: "Easy way\nto manage your money",size:33.sp,weight:FontWeight.bold),
             const SizedBox(height:10),
             CustomText(text: "Connect your money to your friemds and brands",size:15.sp,color:Colors.grey,weight:FontWeight.w700),
           ],
         )),
         const SizedBox(height:10),
         Container(
          padding:const EdgeInsets.symmetric(vertical:15),
          width: double.infinity,
          child: TextButton(
               style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              primary: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
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