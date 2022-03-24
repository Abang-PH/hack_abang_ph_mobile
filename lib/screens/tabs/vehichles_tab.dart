import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/screens/map_route_screen.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';

class VehicleTab extends StatefulWidget {
  const VehicleTab({Key? key}) : super(key: key);

  @override
  State<VehicleTab> createState() => _VehicleTabState();
}

class _VehicleTabState extends State<VehicleTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          200 /*kBottomNavigationBarHeight*/,
      /* floatingActionButton:FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.navigate_before_rounded),
          heroTag: "fab1",
        ),*/
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 100,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/map_route.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () => {},
                  child: Icon(Icons.pin),
                  heroTag: "fab1",
                ),
                SizedBox(height: 10.0),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () => {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Available Services in your Location",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Row(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/joyride1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    SizedBox(width: 10.0),
                                    new Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/angkas1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                    SizedBox(width: 10.0),
                                    new Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/grab1.png"),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          );
                        })
                  },
                  child: Icon(Icons.motorcycle),
                  heroTag: "fab2",
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class _TerminalInfo extends StatelessWidget {
  final String name;
  final String location;
  final String imagePath;
  final double starRating;
  final Function funcClick;

  _TerminalInfo({
    this.name = "name",
    this.location = " 10.0 km ",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
    required this.funcClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcClick(),
      child: Card(
        elevation: 3,
        margin: EdgeInsets.only(top: 10.0),
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: Row(
          children: [
            Container(
              height: 80.0,
              width: 120.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children: [
                          Text(location, style: TextStyle(fontSize: 13.0)),
                          Icon(Icons.pin_drop),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceInfo extends StatelessWidget {
  final String name;
  final String badgeCount;
  final String recent;
  final String imagePath;
  final double starRating;

  _ServiceInfo({
    this.name = "name",
    this.badgeCount = "badge count",
    this.recent = "recent participation",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // clipBehavior: Clip.antiAlias,
      elevation: 3,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Column(
        children: [
          Expanded(
            child: Container(
              // / height: 100,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(name,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

/*    return Container(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              height: 50.0,
              child: new TabBar(
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    text: "Terminals",
                  ),
                  Tab(
                    text: "T-Services",
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    _TerminalInfo(
                      name: "Bus",
                      imagePath: "assets/images/bus1.png",
                      starRating: 4.5,
                      funcClick: (){
                        Navigator.pushNamed(context, MapRouteScreen.routeName);
                      },
                    ),
                    _TerminalInfo(
                      name: "MRT",
                      imagePath: "assets/images/mrt1.png",
                      starRating: 4,
                      funcClick: (){

                      },
                    ),
                    _TerminalInfo(
                      name: "Jeep",
                      imagePath: "assets/images/jeep1.png",
                      starRating: 4,
                      funcClick: (){

                      },
                    ),
                  ],
                ),
              )),
              Container(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    _ServiceInfo(
                      name: "Angkas",
                      imagePath: "assets/images/angkas1.png",
                      starRating: 4,
                    ),
                    _ServiceInfo(
                      name: "Grab",
                      imagePath: "assets/images/grab1.png",
                      starRating: 4,
                    ),
                    _ServiceInfo(
                      name: "JoyRide",
                      imagePath: "assets/images/joyride1.png",
                      starRating: 4,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );*/
