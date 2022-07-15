import 'package:bank_app_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CashPins extends StatelessWidget {
  const CashPins({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const CustomText(text: "Cashpins"),
        elevation:2
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            
          ],
        ),
      ),
    );
  }
}