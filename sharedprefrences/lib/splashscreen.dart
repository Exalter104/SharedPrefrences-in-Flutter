import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrences/lastscreen.dart';
import 'package:sharedprefrences/login.dart';

class SharedPrefrences extends StatefulWidget {
  const SharedPrefrences({Key? key}) : super(key: key);
  static const String id = "sharedprefrence";
  @override
  State<SharedPrefrences> createState() => _SharedPrefrencesState();
}

class _SharedPrefrencesState extends State<SharedPrefrences> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool("isLogin") ?? false;
    if (isLogin) {
      Timer(
        const Duration(seconds: 3),
        () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Lastscreen()));
        },
      );
    } else {
      Timer(
        const Duration(seconds: 3),
        () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multi Role BAse Application"),
          centerTitle: true,
        ),
        body: const Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: AssetImage("images/reborn.jpg"),
        ));
  }
}
