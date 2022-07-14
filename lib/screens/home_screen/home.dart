import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(children: [
          _buildAppBar(),
          Container(
            padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15),
            margin:const EdgeInsets.symmetric(horizontal: 15) ,
            decoration:const BoxDecoration(
              color:Colors.purple,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset("assets/nigeria_logo.jpg",width:25),
                  const SizedBox(width:5),
                ],)
            ],)
          )
        ],),
      )
    );
  }

   _buildAppBar() {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15),
          child: Row(
            children: [
              Image.asset("assets/CircleProfile.png",width:30),
              const SizedBox(width:10),
              const Text('Hi, Precious'),
              const Spacer(),
              Image.asset('assets/search.png',width:30),
              const SizedBox(width:10),
              Image.asset('assets/comment.png',width:30),
            ],
          ),
        );
  }
}