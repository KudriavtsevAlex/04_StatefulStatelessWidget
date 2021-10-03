import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> fakeData = List.generate(100, (index) => index.toString());
  List<String> fileNames = [
    'assets/images/s1.png',
    'assets/images/s2.png',
    'assets/images/s3.png',
    'assets/images/s4.png',
    'assets/images/s5.png',
    'assets/images/s6.png',
    'assets/images/s7.png',
    'assets/images/s8.png',
    'assets/images/s9.png',
    'assets/images/s10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Appbar title'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.access_alarm_sharp)),
              Tab(icon: Icon(Icons.accessible_forward_rounded)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              key: const PageStorageKey('1'),
              children: [
                for (var item in fileNames) Image(image: AssetImage(item)),
              ],
            ),
            ListView(
              key: const PageStorageKey('2'),
              children: [
                for (var item in fileNames) Image(image: AssetImage(item)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
