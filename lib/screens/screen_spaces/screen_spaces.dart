// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/consts/data.dart';
import 'package:hero_card/screens/screen_spaces/components/card_space.dart';

class ScreenSpaces extends StatefulWidget {
  ScreenSpaces({super.key});

  @override
  _ScreenSpacesState createState() => _ScreenSpacesState();
}

class _ScreenSpacesState extends State<ScreenSpaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaces'),
      ),
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: spaces.length,
          itemBuilder: (_, index) => CardSpace(space: spaces[index]),
        ),
      ),
    );
  }
}
