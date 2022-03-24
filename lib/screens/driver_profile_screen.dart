import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverProfileScreen extends StatefulWidget {
  static const routeName = "/driver_profile_screen";

  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  State<DriverProfileScreen> createState() => _DriverProfileScreenState();
}

class _DriverProfileScreenState extends State<DriverProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Driver Profile"),
        backgroundColor: Colors.green,
      ),
   //   floatingActionButton:
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Driver Information",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    child: _DriverProfile(
                      name: "John Doe",
                      imagePath: "assets/images/jrev.png",
                      starRating: 4.5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.add_call, size: 20,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFe0f2f1)),
                        ),
                        SizedBox(width: 30),
                        Container(
                          width: 60,
                          height: 60,
                          child: Icon(Icons.message, size: 20,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFe0f2f1)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Vehicle Information",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding:
                              EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3.0),
                              border:
                                  Border.all(color: Colors.grey[400] ?? Colors.grey)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Vehicle Type:")),
                                  Expanded(flex: 5, child: Text(" Taxi - Vios"))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Plate No:")),
                                  Expanded(flex: 5, child: Text(" NCR 1234"))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Seats:")),
                                  Expanded(flex: 5, child: Text("20"))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Trip Information",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(3.0),
                              border:
                              Border.all(color: Colors.grey[400] ?? Colors.grey)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Origin: ")),
                                  Expanded(flex: 5, child: Text("Shaw Boulivard"))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Destination: ")),
                                  Expanded(flex: 5, child: Text("Antipolo"))
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(flex: 3, child: Text("Price:")),
                                  Expanded(flex: 5, child: Text("300.0 php"))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Passenger Feedback",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(height: 10.0),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          // padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                          child: Column(
                            children: [
                              _CustomerFeedback(
                                name: "Mark Estopace",
                                starRating: 5.0,
                                imagePath: "assets/images/mark.png",
                                comment: "Magaling kumambyo, PAK NA PAK!",
                              ),
                              _CustomerFeedback(
                                name: "Justine Nicole",
                                starRating: 5.0,
                                imagePath: "assets/images/nicole.png",
                                comment:
                                    "Sobrang bait and accomodating sa aming mga turista !!!",
                              ),
                              /*_CustomerFeedback(
                                name: "Denver Dalman",
                                starRating: 5.0,
                                imagePath: "assets/images/denver.png",
                                comment:
                                    "Very punctual and knowledgable dito sa isabela",
                              ),*/
                              SizedBox(height: 50.0)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                color: Colors.green,
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}

class _DriverProfile extends StatelessWidget {
  final String name;
  final String badgeCount;
  final String location;
  final String imagePath;
  final double starRating;

  _DriverProfile({
    this.name = "name",
    this.badgeCount = "badge count",
    this.location = " 10 km",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
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
                  new Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.fill,
                        ),
                      )),
                  /*      RatingBar.builder(
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
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 17.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "Vaccinated",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
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
                        Icons.star,
                        color: Colors.orange,
                        size: 17.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        starRating.toString(),
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomerFeedback extends StatelessWidget {
  final String name;
  final String badgeCount;
  final String location;
  final String imagePath;
  final double starRating;
  final String comment;

  _CustomerFeedback({
    this.name = "name",
    this.badgeCount = "badge count",
    this.location = " 10 km",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
    this.comment = "Magaling kumambyo",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
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
                  new Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                  RatingBar.builder(
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
                  ),
                  Text(
                    comment,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
