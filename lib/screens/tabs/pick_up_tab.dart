import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/screens/driver_list_screen.dart';
import 'package:hack_abang_ph_mobile/screens/driver_profile_screen.dart';
import 'package:hack_abang_ph_mobile/screens/map_route_screen.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';
import 'package:hack_abang_ph_mobile/utilities/theme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PickUpTab extends StatefulWidget {
  const PickUpTab({Key? key}) : super(key: key);

  @override
  State<PickUpTab> createState() => _PickUpTabState();
}

class _PickUpTabState extends State<PickUpTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      //height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          /*Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pick Up Service",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                    color: Colors.green),
              ),
            ],
          ),*/
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.trip_origin,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          hintText: "Starting Point",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 0.0),
                          hintText: "Destination Point",
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.grey, width: 0.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height -
                    kBottomNavigationBarHeight,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(kToolbarHeight),
                      child: Container(
                        height: 50.0,
                        child: new TabBar(
                          //indicatorColor: Colors.blue,
                          //padding: EdgeInsets.zero,
                          labelPadding: EdgeInsets.zero,
                          indicator: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.black,
                          tabs: [
                            Tab(
                              text: "Taxi",
                            ),
                            Tab(
                              text: "Motorcycle",
                            ),
                            Tab(
                              text: "Tricycle",
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              _VehicleDetails(
                                name: "John Doe",
                                funcClick: () {
                                  Navigator.pushNamed(context, DriverProfileScreen.routeName);

                                },
                                imagePath: "assets/images/taxi1.png",
                                funcViewProfile: () {
                                },
                                vehicleModel: "Vios",
                              ),
                              _VehicleDetails(
                                name: "Mani Pakyaw",
                                funcClick: () {},
                                imagePath: "assets/images/taxi1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Hyundai",
                              ),
                              _VehicleDetails(
                                name: "Evan Hansen",
                                funcClick: () {},
                                imagePath: "assets/images/taxi1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Mirage",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              _VehicleDetails(
                                name: "John Doe",
                                funcClick: () {},
                                imagePath: "assets/images/motorcycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Honda Click",
                              ),
                              _VehicleDetails(
                                name: "Mani Pakyaw",
                                funcClick: () {},
                                imagePath: "assets/images/motorcycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Suzuki Burgman",
                              ),
                              _VehicleDetails(
                                name: "Evan Hansen",
                                funcClick: () {},
                                imagePath: "assets/images/motorcycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Yamaha Sight",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              _VehicleDetails(
                                name: "John Doe",
                                funcClick: () {},
                                imagePath: "assets/images/tricycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Honda Click",
                              ),
                              _VehicleDetails(
                                name: "Mani Pakyaw",
                                funcClick: () {},
                                imagePath: "assets/images/tricycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Suzuki Burgman",
                              ),
                              _VehicleDetails(
                                name: "Evan Hansen",
                                funcClick: () {},
                                imagePath: "assets/images/tricycle1.png",
                                funcViewProfile: () {},
                                vehicleModel: "Yamaha Sight",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ],
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
  final Function funcClick;

  _ServiceInfo({
    this.name = "name",
    this.badgeCount = "badge count",
    this.recent = "recent participation",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
    required this.funcClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcClick(),
      child: Card(
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

class _VehicleDetails extends StatelessWidget {
  final String name;
  final String badgeCount;
  final String location;
  final String imagePath;
  final double starRating;
  final Function funcClick;
  final Function funcViewProfile;
  final String vehicleModel;

  _VehicleDetails({
    this.name = "name",
    this.badgeCount = "badge count",
    this.location = " 10 km",
    this.imagePath = "assets/images/taxi1.png",
    this.starRating = 5,
    required this.funcClick,
    required this.funcViewProfile,
    this.vehicleModel = "",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcClick(),
      child: Container(
        margin: EdgeInsets.only( top: 10.0),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(color: Colors.grey[400] ?? Colors.grey)),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.fill,
                          ),
                        )),
                    /* RatingBar.builder(
                      itemSize: 15.0,
                      initialRating: starRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),*/
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 17.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              "5.0",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.car_repair,
                              color: Colors.green,
                              size: 17.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              "LGU Verrified",
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.car_rental,
                              color: Colors.green,
                              size: 17.0,
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              vehicleModel,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
* Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _ServiceInfo(
                  name: "Taxi",
                  imagePath: "assets/images/taxi1.png",
                  starRating: 4,
                  funcClick: () {
                    Navigator.pushNamed(context, DriverListScreen.routeName);
                  },
                ),
                _ServiceInfo(
                  name: "Tricycle",
                  imagePath: "assets/images/tricycle1.png",
                  starRating: 4,
                  funcClick: () {},
                ),
                _ServiceInfo(
                  name: "Motorcycle",
                  imagePath: "assets/images/motorcycle1.png",
                  starRating: 4,
                  funcClick: () {},
                ),
              ],
            ),
          ),*/
