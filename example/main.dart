import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';

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
                  await EasyLauncher.sms(number: "1010", message: "Hello");
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
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () async {
                  await EasyLauncher.openMap(
                      lati: "36.7032925", long: "67.1891222");
                },
                child: const Text("Open Google map"),
              ),
              MaterialButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () async {
                  await EasyLauncher.url(
                      url: "https://www.instagram.com/qasim.dev",
                      mode: Mode.platformDefault);
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
