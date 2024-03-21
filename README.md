<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A flutter pakage based on url_launcher pakage for call,sms,email and launch url in browser or app with url parameters and launch mode as platform default or platform specific mode for web

## Features

- Very easy to use
- Support Android & IOS

## Getting started
Add pakage to your project by running follwing command in your terminal

```bat
flutter pub add easy_url_launcher
```

Import pakage
```dart
import 'pakage:easy_url_launcher/easy_url_launcher.dart';
```

## Usage

```dart
Column(
    childerin: [
        TextButton(
            child: Text("Open url"),
            onPressed: ()async{
                EasyLauncher.url(url:"https://pub.dev");
            }
        ),

        TextButton(
            child: Text("Open url in default app"),
            onPressed: ()async{
                EasyLauncher.url(url:"https://www.instagram.com",mode: LaunchMode.externalApplication);
            }
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
        child:Text("Call number"),
        onPressed: ()async {
            EasyLauncher.call(number: "0088980999");
        }
    ),

    MaterialButton(
        child:Text("Call USSD"),
        onPressed: ()async {
            EasyLauncher.call(number: "*#06#");
        }
    ),

    MaterialButton(
        child:Text("Send sms"),
        onPressed: ()async {
            EasyLauncher.sms(number: "555",message: "Hello");
        }
    ),

    ]
),
```
