import 'package:bank_app_ui/screens/home_screen/home.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static String routeName = "/page-view";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _pages = <Widget>[
  const Home(),
  ];
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    _selectedIndex = index;
  }

  void _itemTapped(int _selectedIndex) {
    setState(
      () {
        _pageController.jumpToPage(_selectedIndex);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            // selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 3,
            selectedLabelStyle:const TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            unselectedLabelStyle:const TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            onTap: _itemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Icon(
                     Icons.home,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    )),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child:Icon(Icons.pin,
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                        )),
                label: 'Cashpins',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.card_giftcard_outlined,
                        color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                        )),
                label: 'Cards',
              ),
            ],
            type: BottomNavigationBarType.fixed),
      ),
    );
  }
}
