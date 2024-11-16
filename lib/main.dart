import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      home: Scaffold(
        appBar: getAppBar(),
        body: SafeArea(child: Text("Hi ")),
      ),
    );
  }
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    elevation: 5,
    backgroundColor: Colors.blue,
    title: Text("Omi karami"),
  );
}
