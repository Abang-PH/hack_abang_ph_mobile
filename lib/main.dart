import 'package:flutter/material.dart';
import 'package:hack_abang_ph_mobile/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:hack_abang_ph_mobile/screens/driver_list_screen.dart';
import 'package:hack_abang_ph_mobile/screens/driver_profile_screen.dart';
import 'package:hack_abang_ph_mobile/screens/home_screen.dart';
import 'package:hack_abang_ph_mobile/screens/map_route_screen.dart';
import 'package:hack_abang_ph_mobile/utilities/theme.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: /*UIThemeColors.YELLOW1*/ Colors.green,
        fontFamily: UIFontStyles.POPPINS,
      ),
      initialRoute: LoginScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        MapRouteScreen.routeName: (context) => const MapRouteScreen(),
        DriverListScreen.routeName: (context) => const DriverListScreen(),
        DriverProfileScreen.routeName: (context) => const DriverProfileScreen(),
        LoginScreen.routeName: (context) =>  LoginScreen(),
      },
    );
  }
}
