import 'package:flutter/material.dart';
import 'package:kbc_game/Questions.dart';
import 'Global.dart';

class lost extends StatefulWidget {
  const lost({Key? key}) : super(key: key);

  @override
  State<lost> createState() => _lostState();
}

class _lostState extends State<lost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff0f0c29),
              Color(0xff302b63),
              Color(0xff24243e),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "OOPS!!",
              style: TextStyle(
                fontSize: 50,
                color: Color(0xffF4EAD5),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, right: 110),
              child: Divider(
                thickness: 2,
                color: Colors.white24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, right: 110),
              child: Divider(
                thickness: 2,
                color: Colors.white24,
              ),
            ),
            const SizedBox(height: 200),
            const Text(
              "Sorry, You Lost the Game 😔",
              style: TextStyle(
                  color: Color(0xffBCEAD5),
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 200),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white.withOpacity(0.8),
                backgroundColor: Colors.white.withOpacity(0.2),
                side: const BorderSide(width: 4, color: Colors.white24),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                setState(() {
                  Global.initialQuestion = 0;
                  Global.wonPrice = 500;
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const Questions()),
                      (route) => false);
                });
              },
              icon: const Icon(
                Icons.refresh_sharp,
                size: 30,
                color: Colors.white,
              ),
              label: const Text(
                "Try Again",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
