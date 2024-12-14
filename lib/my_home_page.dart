import 'package:basketball_app/const.dart';
import 'package:basketball_app/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterA = 0;
  int _counterB = 0;
  void incrementA({required int point}) {
    setState(() {
      _counterA += point;
    });
  }

  void incrementB({required int point}) {
    setState(() {
      _counterB += point;
    });
  }

  void reset() {
    setState(() {
      _counterB = 0;
      _counterA = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Basketball Counter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '$_counterA',
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      text: 'Add 1 Point',
                      onPressed: () {
                        incrementA(point: 1);
                      },
                    ),
                    CustomElevatedButton(
                      text: 'Add 2 Point',
                      onPressed: () {
                        incrementA(point: 2);
                      },
                    ),
                    CustomElevatedButton(
                      text: 'Add 3 Point',
                      onPressed: () {
                        incrementA(point: 3);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2, // ارتفاع الخط
                  child: const VerticalDivider(
                    color: Colors.grey, // لون الخط
                    thickness: 2, // سماكة الخط
                    width: 20, // عرض المساحة حول الخط
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '$_counterB',
                            style: const TextStyle(
                              fontSize: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      text: 'Add 1 Point',
                      onPressed: () {
                        incrementB(point: 1);
                      },
                    ),
                    CustomElevatedButton(
                      text: 'Add 2 Point',
                      onPressed: () {
                        incrementB(point: 2);
                      },
                    ),
                    CustomElevatedButton(
                      text: 'Add 3 Point',
                      onPressed: () {
                        incrementB(point: 3);
                      },
                    ),
                  ],
                ),
              ],
            ),
            CustomElevatedButton(
              text: 'Reset',
              onPressed: () {
                reset();
              },
            ),
          ],
        ),
      ),
    );
  }
}
