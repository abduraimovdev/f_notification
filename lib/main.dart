import 'dart:async';

import 'package:f_notification/src/common/service/notification_service.dart';
import 'package:f_notification/src/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runZoned(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await LNService.settings();
      runApp(const App());
    });

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
