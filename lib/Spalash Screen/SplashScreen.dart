import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolmanagementapp/DashBoardScreen/DashBoardScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return DashboardScreen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/splashscreenimage2.png",
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.7,
            ), // Replace with your logo
          ),
          Text(
            "SCHOOL",
            style: GoogleFonts.russoOne(fontSize: 45, color: Colors.blueGrey),
          ),
          Text(
            "School Management App",
            style: GoogleFonts.montserrat(fontSize: 13, color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
