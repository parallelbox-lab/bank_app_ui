import 'package:bank_app_ui/widgets/custom_text.dart';
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
            padding: const EdgeInsets.symmetric(vertical:9.0,horizontal: 15),
            margin:const EdgeInsets.symmetric(horizontal: 15,vertical:5.0) ,
            decoration:const BoxDecoration(
              color:Colors.deepPurple,
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Image.asset("assets/nigeria_logo.jpg",width:25),
                  const SizedBox(width:10),
                  const CustomText(text: "Wallet Balance",color: Colors.white,),
                 const Spacer(),
                  TextButton(onPressed:(){},
                  child:Row(
                    children: const [
                    Icon(Icons.refresh),
                    SizedBox(width:5),
                    CustomText(text: 'Refresh Balance',color: Colors.white,),
                    ],
                  ),
                  style: TextButton.styleFrom(
                padding:const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
              primary: Colors.white,
              backgroundColor: Colors.purpleAccent,
            ),)
                ],),
               const SizedBox(height:25),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  const CustomText(text: "N52,0000",color: Colors.white,),
                   IconButton(onPressed: (){}, icon:const Icon(Icons.remove_red_eye,color:Colors.white))
                 ],
               )
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