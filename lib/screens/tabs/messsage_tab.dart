import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/utilities/asset_paths.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({Key? key}) : super(key: key);

  @override
  State<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    text: "Chat",
                  ),
                  Tab(
                    text: "Notifications",
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
                        _MessageCard(
                          number: "0978658416",
                          message: "Kamusta Utang mo d pa bayad",
                          funcClick: (){
                          },
                        ),
                        _MessageCard(
                          number: "0978658416",
                          message: "San ka mam? ",
                          funcClick: (){
                          },
                        ),  _MessageCard(
                          number: "0978658416",
                          message: "Kick off summer with GoDEALS! Get 10% off travel and dining vouchers from KLOOK when you register to any Go+ promo from March 23 to 25, 2022. Download the New GlobeOne app at https://glbe.co/NewGlobeONE and register now! No minimum spend required for vouchers. Per DTI Fair Trade Permit No. FTEB-139437, series of 2022. No advisories? Text OFF to 2686 for free.",
                          funcClick: (){
                          },
                        ),

                      ],
                    ),
                  )),
              Container(
                child: Column(
                  children: [
                    _MessageCard(
                      number: "Offer",
                      message: "We are offering you a promo. Go ahead take it.",
                      funcClick: (){
                      },
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _MessageCard extends StatelessWidget {
  final String number;
  final String message;
  final Function funcClick;

  _MessageCard({
    this.number = "09157860669",
    this.message = "wazzup",
    required this.funcClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(top: 10.0),

      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(number, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
            Text(message)
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

