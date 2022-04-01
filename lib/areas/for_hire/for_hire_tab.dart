import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ForHireTab extends StatefulWidget {
  const ForHireTab({Key? key}) : super(key: key);

  @override
  State<ForHireTab> createState() => _ForHireTabState();
}

class _ForHireTabState extends State<ForHireTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    // controller: TextEditingController(text: ""),
                    decoration: new InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 0.0),
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: "Search",
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
                SizedBox(width: 10.0),
                Expanded(
                    flex: 2, child: OutlinedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: const Text("Filter", style: TextStyle(color: Colors.black),),
                ))
              ],
            ),
          ),
          SizedBox(height: 10.0),
          _ForHireInfo(
            funcClick: () {},
            imagePath: "assets/images/hiace1.png",
            name: "HI ACE",
            owner: "Mark",
            location: "Isabela",
          ),
          _ForHireInfo(
            funcClick: () {},
            imagePath: "assets/images/wigo1.png",
            name: "WIGO",
            owner: "John Rev",
            location: "Isabela",
          ),
          _ForHireInfo(
            funcClick: () {},
            imagePath: "assets/images/adventure1.png",
            name: "ADVENTURE",
            owner: "Sigfried",
            location: "Isabela",
          ),
        ],
      ),
    );
  }
}

class _ForHireInfo extends StatelessWidget {
  final String name;
  final String location;
  final String owner;
  final String imagePath;
  final double starRating;
  final Function funcClick;

  _ForHireInfo({
    this.name = "name",
    this.location = " 10.0 km ",
    this.owner = "John Doe",
    this.imagePath = "assets/images/wigo1.png",
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
        child: Column(
          children: [
            Container(
              // height: 80.0,
              // width: 120.0,
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 10.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(name,
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(location, style: TextStyle(fontSize: 13.0)),
                                  Icon(Icons.pin_drop),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Owner: ", style: TextStyle(fontSize: 13.0)),
                                  Text(owner, style: TextStyle(fontSize: 13.0)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("CP No: ", style: TextStyle(fontSize: 13.0)),
                                  Text("09786525665",
                                      style: TextStyle(fontSize: 13.0)),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 15.0,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text("LGU Verified",
                                      style: TextStyle(fontSize: 13.0)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Ratings: ",
                                      style: TextStyle(fontSize: 13.0)),
                                  RatingBar.builder(
                                    itemSize: 15.0,
                                    initialRating: starRating,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.0),
                                    itemBuilder: (context, _) =>
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],),
            ),

          ],
        ),
      ),
    );
  }
}
