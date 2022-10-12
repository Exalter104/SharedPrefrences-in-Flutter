import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedprefrences/homescreen.dart';

class SharedPrefrences extends StatefulWidget {
  const SharedPrefrences({Key? key}) : super(key: key);
  static const String id = "sharedprefrence";
  @override
  State<SharedPrefrences> createState() => _SharedPrefrencesState();
}

class _SharedPrefrencesState extends State<SharedPrefrences> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Role BAse Application"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
              TextFormField(
                controller: ageController,
                decoration: const InputDecoration(
                  hintText: "age",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString("name", "Exalter");
                  prefs.setInt("age", 23);
                  prefs.setBool("isLogin", true);
                  Navigator.pushNamed(context, HomeScreen.id);

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeScreen()));
                },
                color: Colors.black,
                textColor: Colors.white,
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
