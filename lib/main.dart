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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        getHeader(),
        _getRowIcons(),
        SizedBox(
          height: 12,
        ),
        _getSkillLabels(),
        SizedBox(
          height: 12,
        ),
        getResume(),
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
    ],
  );
}

Widget _getRowIcons() {
  final icons = [
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.linkedin,
    FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.twitter,
  ];

  return Wrap(
    runSpacing: 20,
    spacing: 20,
    alignment: WrapAlignment.center,
    children: icons
        .map((icon) => IconButton(
              onPressed: () {},
              icon: FaIcon(icon),
            ))
        .toList(),
  );
}

PreferredSizeWidget _getAppBar() {
  return AppBar(
    elevation: 5,
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: Text(
      "امید کرمی",
      textAlign: TextAlign.center,
    ),
  );
}

Widget _getSkillLabels() {
  final skills = [
    {'image': 'images/android.png', 'label': 'android'},
    {'image': 'images/flutter.png', 'label': 'flutter'},
    {'image': 'images/api.png', 'label': 'API'},
    {'image': 'images/dart.png', 'label': 'Dart'},
    {'image': 'images/java.png', 'label': 'Java'},
    {'image': 'images/linux.png', 'label': 'linux'}
  ];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: skills.map((skill) {
        return Card(
          elevation: 6,
          child: Column(
            children: [
              Container(
                width: 80,
                height: 80,
                child: Image.asset(skill['image']!),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(skill['label']!),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}

Widget getResume() {
  final experiences = [
    "برنامه نویس جاوا در شرکت داتین سال 99",
    "برنامه نویس موبایل در فناوری اطلاعات رجا سال 1400 الی 1401",
    "مدیر و موسس نوید ترابر آسیا "
  ];

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    width: double.infinity,
    color: Colors.grey[200],
    child: Column(
      children: [
        Text(
          "سابقه کاری من",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: experiences
              .map((experience) => Text(
                    experience,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ))
              .toList(),
        ),
      ],
    ),
  );
}
