import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num data1 = 0;
  num data2 = 0;
  String ope = '';
  void operator() {
    switch (ope) {
      case '':
        break;
      case '/':
        data1 /= data2;
        ope = '';
        data2 = data1;

        break;
      case 'X':
        data1 *= data2;
        ope = '';
        data2 = data1;

        break;
      case '+':
        data1 += data2;
        ope = '';
        data2 = data1;

        break;
      case '-':
        data1 -= data2;
        ope = '';
        data2 = data1;

        break;
      case '%':
        data1 %= data2;
        ope = '';
        data2 = data1;
        break;
      case '^':
        data1 = pow(data1, data2);
        ope = '';
        data2 = data1;
        break;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            // padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
            color: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 10,
                color: Colors.orange,
              )),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(30, 70, 0, 0),
                    child: Text(
                      data2.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const Divider(height: 20, color: Colors.orange),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              data1 = 0;
                              data2 = 0;
                              ope = '';
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text(
                              "C",
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            num data3 = data2;
                            while ((data3 / 10) > 1) {
                              data3 /= 10;
                              data3 = data3.toInt();
                            }
                            data2 -= data3;
                            data2 /= 10;

                            setState(() {});
                          },
                          style: const ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(70, 50))),
                          child: const Text("DEL"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data1 = data2;
                              ope = '%';
                              data2 = 0;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("%")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data1 = data2;
                              data2 = 0;
                              ope = '/';
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("/")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;
                              data2 += 7;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("7")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 8;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("8")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 9;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("9")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data1 = data2;
                              ope = 'X';
                              data2 = 0;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("X")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 4;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("4")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 5;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("5")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 6;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("6")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data1 = data2;
                              ope = '-';
                              data2 = 0;

                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("-")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              data2 += 1;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("1")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 2;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("2")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 3;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("3")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data1 = data2;
                              ope = '+';
                              data2 = 0;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("+")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              data2 *= -1;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("+/-")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              data2 *= 10;

                              data2 += 0;

                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("0")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            data1 = data2;
                            ope = '^';
                            data2 = 0;
                            setState(() {});
                          },
                          style: const ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(70, 50))),
                          child: const Text("^"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              // data2 = data1;
                              operator();
                              // data1 = 0;
                              setState(() {});
                            },
                            style: const ButtonStyle(
                                minimumSize:
                                    MaterialStatePropertyAll(Size(70, 50))),
                            child: const Text("=")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
