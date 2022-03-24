import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/screens/tabs/pick_up_tab.dart';
import 'package:hack_abang_ph_mobile/screens/tabs/maps_tab.dart';
import 'package:hack_abang_ph_mobile/screens/tabs/vehichles_tab.dart';
import 'package:hack_abang_ph_mobile/utilities/theme.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  static const List<Widget> _pages = <Widget>[
   /* MapTab(),*/
    VehicleTab(),
    PickUpTab(),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.book,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Row(
          children: [
            Text("Abang.ph - Passenger"),
            Container(
              height: 40.0,
              child: Image.asset(
                "assets/images/icon_pin1.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopContainer(
                height: 100,
                width: double.infinity,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "Abang.ph",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontFamily: UIFontStyles.MONTSERRAT_BOLD,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                "by Abangers",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Container(child: _pages.elementAt(_selectedTab)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        currentIndex: _selectedTab,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        selectedFontSize: 17.0,
        selectedIconTheme: IconThemeData(size: 28.0),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.car_rental),
            label: "Transpo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Pick-Up",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Booking",
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}


class TopContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final EdgeInsets? padding;

  TopContainer({this.height, this.width, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? padding : EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child,
    );
  }
}
