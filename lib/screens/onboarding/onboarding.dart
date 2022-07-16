import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const  SizedBox(height: 30,),
          Image.asset("assets/logo.png",width:180),
       Expanded(
         child: Center(
          child: Image.asset("assets/let-swap.jpg"),
         ),
       )
            
          ],
        ),
      )
    );
  }
}