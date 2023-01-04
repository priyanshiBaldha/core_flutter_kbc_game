import 'package:flutter/material.dart';
import 'package:kbc_game/Questions.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: kbc_game(),
    ),
  );
}

class kbc_game extends StatefulWidget {
  const kbc_game({Key? key}) : super(key: key);

  @override
  State<kbc_game> createState() => _kbc_gameState();
}

class _kbc_gameState extends State<kbc_game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    "Let's Play Quiz ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        letterSpacing: 2),
                  ),
                  const Text(
                    "Enter Your information below",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Questions()));
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "Let's Start Quiz..",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
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
