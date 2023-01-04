import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kbc_game/lost.dart';
import 'package:kbc_game/won.dart';
import 'Global.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Random random = Random();
  int randomColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          IndexedStack(
            index: Global.initialQuestion,
            children: Global.allQuestions
                .map((e) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: MediaQuery.of(context).size.height,
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
                            children: [
                              const SizedBox(
                                height: 200,
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${e['question']}",
                                style: const TextStyle(
                                    color: Color(0xffBB6464),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 2),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 200,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          final Random random = Random();
                                          final randomColor =
                                              random.nextInt(1000);
                                          Global.color = Color.fromRGBO(
                                              255, randomColor, 164, 1);
                                          if (e['response'] == "A") {
                                            Global.wonPrice = Global.wonPrice +
                                                Global.wonPrice;
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const wonPage()));
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const lost()));
                                          }
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.white.withOpacity(0.8),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        side: const BorderSide(
                                            width: 3, color: Colors.white24),
                                      ),
                                      child: Text(
                                        "${e['choice 1']}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          final Random random = Random();
                                          final randomColor =
                                              random.nextInt(1000);
                                          Global.color = Color.fromRGBO(
                                              200, randomColor, 45, 1);
                                          if (e['response'] == "B") {
                                            Global.wonPrice = Global.wonPrice +
                                                Global.wonPrice;
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const wonPage()));
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const lost()));
                                          }
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.white.withOpacity(0.8),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        side: const BorderSide(
                                            width: 3, color: Colors.white24),
                                      ),
                                      child: Text(
                                        "${e['choice 2']}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          final Random random = Random();
                                          final randomColor =
                                              random.nextInt(700);
                                          Global.color = Color.fromRGBO(
                                              200, randomColor, 78, 1);
                                          if (e['response'] == "C") {
                                            Global.wonPrice = Global.wonPrice +
                                                Global.wonPrice;
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const wonPage()));
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const lost()));
                                          }
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.white.withOpacity(0.8),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        side: const BorderSide(
                                            width: 3, color: Colors.white24),
                                      ),
                                      child: Text(
                                        "${e['choice 3']}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          final Random random = Random();
                                          final randomColor =
                                              random.nextInt(500);
                                          Global.color = Color.fromRGBO(
                                              200, randomColor, 98, 1);
                                          if (e['response'] == "D") {
                                            Global.wonPrice = Global.wonPrice +
                                                Global.wonPrice;
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const wonPage()));
                                          } else {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const lost()));
                                          }
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor:
                                            Colors.white.withOpacity(0.8),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        side: const BorderSide(
                                            width: 3, color: Colors.white24),
                                      ),
                                      child: Text(
                                        "${e['choice 4']}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
