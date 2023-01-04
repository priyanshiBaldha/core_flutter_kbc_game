import 'package:flutter/material.dart';
import 'package:kbc_game/main.dart';
import 'Global.dart';
import 'Questions.dart';

class finalPage extends StatefulWidget {
  const finalPage({Key? key}) : super(key: key);

  @override
  State<finalPage> createState() => _finalPageState();
}

class _finalPageState extends State<finalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  const Text(
                    " 🎊  Congratulations!!  🎊 ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You Won. . .🤘🤘🤘\n\n ₹${Global.wonPrice}",
                    style: const TextStyle(color: Colors.orange, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 100),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white.withOpacity(0.8),
                      backgroundColor: Colors.white.withOpacity(0.2),
                      side: const BorderSide(width: 3, color: Colors.white24),
                      padding: const EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      setState(() {
                        Global.initialQuestion = 0;
                        Global.wonPrice = 500;
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => const kbc_game()),
                            (route) => false);
                      });
                    },
                    icon: const Icon(
                      Icons.refresh,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Restart",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 3),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
