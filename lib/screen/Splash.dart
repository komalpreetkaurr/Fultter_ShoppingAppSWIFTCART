import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/screen/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  logo
            Image.asset(
              'image/logo-transparent-png.png', 
              width: 300.0, 
              height: 300.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Swift Cart',
              style: GoogleFonts.lemon(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800
              ),
            ),
            SizedBox(height: 10.0), 
            Text(
              'Explore our amazing features!',
              style: GoogleFonts.pacifico(
                fontSize: 20.0,
                color: Colors.tealAccent.shade700,
              ),
            ),

            SizedBox(height: 10.0), 
            Text(
              'Join our community and enjoy shopping!',
              style: GoogleFonts.pacifico(
                fontSize: 20.0,
                color: Colors.tealAccent.shade700,
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}
