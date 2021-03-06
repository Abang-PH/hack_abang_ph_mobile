import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/areas/for_hire/for_hire_tab.dart';
import 'package:hack_abang_ph_mobile/areas/tabs/message_tab.dart';
import 'package:hack_abang_ph_mobile/areas/tabs/pick_up_tab.dart';
import 'package:hack_abang_ph_mobile/areas/tabs/vehichles_tab.dart';
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
    VehicleTab(),
    PickUpTab(),
    ForHireTab(),
    MessageTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0.0,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title:   Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
          child: TopContainer(
            //height: 100,
            width: double.infinity,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: <Widget>[
                        Container(
                          child: Text(
                            "Abang.ph",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: UIFontStyles.MONTSERRAT_BOLD,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "by Abangers",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 10.0,
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
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(child: _pages.elementAt(_selectedTab)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3.0,
        currentIndex: _selectedTab,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).primaryColor,
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
            icon: Icon(Icons.car_repair),
            label: "For Hire",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
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
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          )),
      height: height,
      width: width,
      child: child,
    );
  }
}
