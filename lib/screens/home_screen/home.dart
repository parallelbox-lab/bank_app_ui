import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(children: [
          _buildAppBar()
        ],),
      )
    );
  }

   _buildAppBar() {
    return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset("assets/circleProfile.png"),
              const SizedBox(width:5),
              const Text('Hi, Precious'),
              const Spacer(),
              Image.asset('assets/search.png'),
              const Spacer(),
              Image.asset('assets/search.png'),

              
            ],
          ),
        );
  }
}