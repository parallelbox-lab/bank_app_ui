import 'package:bank_app_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String greetings() {
      var hour = DateTime.now().hour;
      if (hour < 12) {
        //
        return "Good Morning";
      }
      if (hour < 17) {
        //
        return "Good Afternoon";
      }
      //
      return "Good Evening";
    }

    return Scaffold(
      body:SafeArea(
        child: ListView(children: [
          _buildAppBar(greetings()),
          _walletBalance(),
          const SizedBox(height:25),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GridView.count(
              padding:const EdgeInsets.all(1),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 0.0,
              children: [
             Container(
              decoration:const BoxDecoration(
                color: Color.fromARGB(26, 135, 239, 135),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),              
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                const Icon(Icons.wallet_giftcard,color:Color(0xff90ee90)),
                const SizedBox(height: 7,),
                CustomText(text: "Fund Wallet",color: Color(0xff90ee90),weight: FontWeight.bold,)
               ],)),
               Container(
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),
              decoration:const BoxDecoration(
                color: Color.fromARGB(26, 83, 44, 19),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.card_membership_outlined,color: Color(0xff5C3317)),
                const SizedBox(height: 7,),
                CustomText(text:"Send Funds",color: Color(0xff5C3317),weight: FontWeight.bold,)
               ],)),
               Container(
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),
              decoration:const BoxDecoration(
                color: Color(0x1AC04000),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.wallet_giftcard),
                const SizedBox(height: 7,),
                CustomText(text: "Cash Pin",color:Color(0xffC04000),weight: FontWeight.bold,)
               ],)),
              Container(
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),
              decoration:const BoxDecoration(
                color: Color(0x1AFF0000),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.wallet_giftcard),
                const SizedBox(height: 7,),
                CustomText(text: "Airtime",color:Color(0xffFF0000),weight: FontWeight.bold,)
               ],)),
               Container(
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),
              decoration:const BoxDecoration(
                color: Color(0x1A6A0DAD),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.wallet_giftcard,),
                const SizedBox(height: 7,),
                CustomText(text: "Pay Bills",color:Color(0xff6A0DAD),weight: FontWeight.bold,)
               ],)),
             Container(
              decoration:const BoxDecoration(
                color: Color(0x1A7D0552),
                borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              padding:const EdgeInsets.all(0),
              margin:const EdgeInsets.all(8.0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.wallet_giftcard),
                const SizedBox(height: 7,),
                CustomText(text: "View All",color:Color(0xff7D0552),weight: FontWeight.bold,)
               ],))
              ],
            ),
          )

        ],),
      )
    );
  }

   _walletBalance() {
    return Container(
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
                const CustomText(text: "N52,0000",color: Colors.white,weight: FontWeight.bold,),
                IconButton(onPressed: (){}, icon:const Icon(Icons.remove_red_eye,color:Colors.white))
               ],
             )
          ],)
        );
  }

   _buildAppBar(String greetings) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical:20.0,horizontal: 15),
          child: Row(
            children: [
              Image.asset("assets/CircleProfile.png",width:30),
              const SizedBox(width:10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Hi, Precious,'),
                  CustomText(text:greetings)
                ],
              ),
              const Spacer(),
              Image.asset('assets/search.png',width:30),
              const SizedBox(width:10),
              Image.asset('assets/comment.png',width:30),
            ],
          ),
        );
  }
}