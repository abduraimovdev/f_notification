import 'package:flutter/material.dart';

import '../../common/service/notification_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Tinchmi ..."),
            TextButton(
              onPressed: goNot,
              child: const Text("One"),
            ),
            TextButton(
              onPressed: goNotTwo,
              child: const Text("Two"),
            ),
            TextButton(
              onPressed: goNotThree,
              child: const Text("Three"),
            ),
          ],
        ),
      ),
    );
  }

  void goNot() async{
    final permission = await LNService.getPermission();
    if(permission != null && permission) {
      await LNService.sendNotification(title: 'Salom', description: 'Flutter');
    }
  }
  void goNotTwo() async{
    final permission = await LNService.getPermission();
    if(permission != null && permission) {
      await LNService.sendNotificationSchedule(title: "Keldi Habar", description: "asldnaskdjnasd asdsajdkajsdkajs asd asdasdasdkasjk", dateTime: DateTime.now().add(const Duration(seconds: 10)));
    }
  }
  void goNotThree() async{
    final permission = await LNService.getPermission();
    if(permission != null && permission) {
      // await LNService.sendNotification(title: 'Salom', description: 'Flutter');
      await LNService.sendNotDuration(title: "Keldi Habar", description: "asldnaskdjnasd asdsajdkajsdkajs asd asdasdasdkasjk", duration: const Duration(seconds: 10));
    }
  }
}
