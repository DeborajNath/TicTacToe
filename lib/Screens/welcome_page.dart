import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/index.dart';
import 'package:tic_tac_toe/Utils/constants/index.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController player1Controller = TextEditingController();
  TextEditingController player2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // double widthP = Dimensions.myWidthThis(context);
    double heightF = Dimensions.myHeightFThis(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome to Tic Tac Toe",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30 * heightF,
            ),
            TextFormField(
              controller: player1Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player 1- Enter your name (X)',
              ),
            ),
            SizedBox(
              height: 30 * heightF,
            ),
            TextFormField(
              controller: player2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player 2- Enter your name (O)',
              ),
            ),
            SizedBox(
              height: 30 * heightF,
            ),
            Visibility(
              visible: player1Controller.text.isNotEmpty &&
                  player2Controller.text.isNotEmpty,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        player1Name: player1Controller.text,
                        player2Name: player2Controller.text,
                        isComputerOpponent: false,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  backgroundColor: primaryColor,
                  minimumSize: Size(double.infinity, 50 * heightF),
                ),
                child: Text(
                  "Play with a Friend",
                  style: TextStyle(color: black, fontSize: 20 * heightF),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (player1Controller.text.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        player1Name: player1Controller.text,
                        player2Name: 'Computer',
                        isComputerOpponent: true,
                      ),
                    ),
                  );
                } else {
                  // Show a dialog or snackbar if player1Controller.text is empty
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Player 1 name cannot be empty.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                backgroundColor: primaryColor,
                minimumSize: Size(double.infinity, 50 * heightF),
              ),
              child: Text(
                "Play against Computer",
                style: TextStyle(color: black, fontSize: 20 * heightF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
