import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        getHeader(),
      ],
    ),
  );
}

Widget getHeader() {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      const CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("images/omid.jpg"),
      ),
      const Text(
        "امیدم یک برنامه نویس و تحلیلگر",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        "عاشق برنامه نویسی موبایل و بازارهای مالی",
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 10,
      ),
      _getRowIcons(),
    ],
  );
}

Widget _getRowIcons() {
  return Wrap(
    runSpacing: 20,
    spacing: 20,
    alignment: WrapAlignment.center,
    children: [
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
      IconButton(
          onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.accusoft)),
    ],
  );
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
      elevation: 5, backgroundColor: Colors.blue, title: Text("hello"));
}
