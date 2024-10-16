import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/index.dart';
import 'package:tic_tac_toe/Utils/constants/colors.dart';
import 'package:tic_tac_toe/Utils/constants/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tic-Tac-Toe", style: TextStyle(fontSize: 50, color: white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
