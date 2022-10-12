import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = "homescreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "HOME SCREEN",
                style: TextStyle(fontSize: 20),
              ),
              MaterialButton(
                onPressed: () async {
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
