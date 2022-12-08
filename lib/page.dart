import 'package:dars/second_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const My2Page()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: isLoading ? const CircularProgressIndicator() : Container()),
    );
  }
}
