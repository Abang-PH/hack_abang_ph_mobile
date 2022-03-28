import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/areas/driver_profile_screen.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DriverListScreen extends StatefulWidget {
  static const routeName = "/driver_list_screen";

  const DriverListScreen({Key? key}) : super(key: key);

  @override
  State<DriverListScreen> createState() => _DriverListScreenState();
}

class _DriverListScreenState extends State<DriverListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drivers"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Taxi Drivers",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: Colors.green),
                  ),
                ],
              ),
              _DriverProfile(
                name: "John Rev",
                imagePath: "assets/images/jrev.png",
                starRating: 4.5,
                funcClick: () {},
                funcViewProfile: (){
                  Navigator.pushNamed(context, DriverProfileScreen.routeName);
                },
                location: " 9.0 km",
              ),
              _DriverProfile(
                name: "Denver",
                imagePath: "assets/images/denver.png",
                starRating: 3.5,
                funcClick: () {},
                funcViewProfile: (){},
                location: " 7.0 km",
              ),
              _DriverProfile(
                name: "Nicole",
                imagePath: "assets/images/nicole.png",
                starRating: 4,
                funcClick: () {},
                funcViewProfile: (){},
                location: " 9.0 km",
              ),
              _DriverProfile(
                name: "Mark Anthony",
                imagePath: "assets/images/mark.png",
                starRating: 5,
                funcClick: () {},
                funcViewProfile: (){},
                location: " 3.0 km",
              ),
              /* _DriverProfile(
                name: "Ferdy",
                imagePath: "assets/images/ferdinandmarcos.png",
                starRating: 0,
                funcClick: (){},
              ),
              _DriverProfile(
                name: "Random Guy",
                imagePath: "assets/images/random_guy.png",
                starRating: 5,
                funcClick: (){},
              )*/
            ],
          ),
        ),
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
  final Function funcClick;
  final Function funcViewProfile;

  _DriverProfile({
    this.name = "name",
    this.badgeCount = "badge count",
    this.location = " 10 km",
    this.imagePath = ImagePath.MALE_ICON1,
    this.starRating = 5,
    required this.funcClick,
    required this.funcViewProfile,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcClick(),
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
            border: Border.all(color: Colors.grey[400] ?? Colors.grey)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.fill,
                          ),
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
                            Text(location, style: TextStyle(fontSize: 12.0)),
                            Icon(Icons.pin_drop),
                            SizedBox(width: 20.0),
                            OutlinedButton(
                              onPressed: ()=> funcViewProfile(),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0))),
                              ),
                              child: const Text(
                                "View Profile",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.green,
                                ),
                              ),
                            )
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
