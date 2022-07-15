import 'package:bank_app_ui/screens/home_screen/home.dart';
import 'package:bank_app_ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_travel_concept/widgets/icon_badge.dart';

class MainScreen extends StatefulWidget {
 const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController? _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics:const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(4, (index) => Home()),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           const SizedBox(width: 7.0),
            barIcon(icon: Icons.home, text:"Home", page: 0),
            barIcon(icon: Icons.pin, text:"CashPins", page: 1),
            barIcon(icon: Icons.card_giftcard_outlined,text:"Cards", page: 2, badge: true),
            barIcon(icon: Icons.menu,text:"Menu", page: 3),
           const  SizedBox(width: 7.0),
          ],
        ),
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController?.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, String? text, int page = 0, bool badge = false}) {
    return Column(
      children: [
        IconButton(
          icon:  Icon(icon, size: 24.0),
          color:
              _page == page ? Theme.of(context).accentColor : Colors.blueGrey[300],
          onPressed: () => _pageController?.jumpToPage(page),
        ),
        CustomText(text: text)
      ],
    );
  }
}