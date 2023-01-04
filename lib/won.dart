import 'package:flutter/material.dart';
import 'package:kbc_game/final.dart';
import 'Global.dart';
import 'Questions.dart';

class wonPage extends StatefulWidget {
  const wonPage({Key? key}) : super(key: key);

  @override
  State<wonPage> createState() => _wonPageState();
}

class _wonPageState extends State<wonPage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            const Text(
              "Yahh!!!!!",
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
            const Spacer(),
            const Text(
              "Your Answer is ... ",
              style: TextStyle(
                  color: Color(0xffBCEAD5),
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2),
            ),
            const SizedBox(height: 10),
            const Text(
              " CORRECT ",
              style: TextStyle(
                  color: Color(0xffFFEBAD), fontSize: 32, letterSpacing: 5),
            ),
            const SizedBox(height: 200),
            Text(
              "You Won...🎉\n₹${Global.wonPrice}",
              style: const TextStyle(
                  color: Color(0xffc78640), fontSize: 30, letterSpacing: 3),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Global.initialQuestion++;
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const Questions()),
                        (route) => false);
                    if (Global.allQuestions.length == Global.initialQuestion) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const finalPage()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white.withOpacity(0.8),
                    backgroundColor: Colors.white.withOpacity(0.2),
                    side: const BorderSide(width: 4, color: Colors.white24),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 4),
                  )),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
