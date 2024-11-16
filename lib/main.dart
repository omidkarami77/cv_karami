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
        appBar: _getAppBar(),
        body: SafeArea(child: _getMainBody()),
      ),
    );
  }
}

Widget _getMainBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        getHeader(),
      ],
    ),
  );
}

Widget getHeader() {
  return const Column(
    children: [
      SizedBox(
        height: 20,
      ),
      CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("images/omid.jpg"),
      ),
      Text(
        "امیدم یک برنامه نویس و تحلیلگر",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text("عاشق برنامه نویسی موبایل و بازارهای مالی")
    ],
  );
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
      elevation: 5, backgroundColor: Colors.blue, title: Text("hello"));
}
