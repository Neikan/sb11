// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/screens/screen_spaces/screen_spaces.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenSpaces(),
    );
  }
}
