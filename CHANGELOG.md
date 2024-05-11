## 0.0.7

* First version
---
### changing:
```dart
LaunchMode
```
### to
```dart
Mode
```

- Adding a method for open a map using Google map
- Adding method to send message to whatsapp

```dart
 MaterialButton(
    color: Colors.green[700],
    textColor: Colors.white,
    onPressed: () async {
        await EasyLauncher.sendToWhatsApp(
             phone: "+93700000000", message: "hi");
        },
    child: const Text("Send to whatsapp"),
),
```
