import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Easy Launcher example"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                color: Colors.green,
                onPressed: () async {
                  await EasyLauncher.call(number: "767676776");
                },
                child: const Text("Call to a number"),
              ),
              MaterialButton(
                color: Colors.greenAccent,
                onPressed: () async {
                  await EasyLauncher.call(number: "*123#");
                },
                child: const Text("Run a ussd code"),
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () async {
                  await EasyLauncher.sms(number: "555", message: "Hello");
                },
                child: const Text("Send a sms"),
              ),
              MaterialButton(
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () async {
                  await EasyLauncher.email(
                      email: "sarwari.developer@gmail.com",
                      subject: "Test",
                      body: "Hello Flutter developer");
                },
                child: const Text("Send an email"),
              ),
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () async {
                  await EasyLauncher.url(url: "https://pub.dev");
                },
                child: const Text("Open url"),
              ),
              MaterialButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () async {
                  await EasyLauncher.url(
                      url: "https://www.instagram.com/qasim.dev",
                      mode: LaunchMode.externalApplication);
                },
                child: const Text("Open url in default app"),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
