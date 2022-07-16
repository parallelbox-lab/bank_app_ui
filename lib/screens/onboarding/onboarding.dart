import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image.asset("assets/logo.png",width:80),
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