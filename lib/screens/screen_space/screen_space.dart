// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';
import 'package:hero_card/screens/screen_space/components/screen_space_button.dart';
import 'package:hero_card/screens/screen_space/components/screen_space_description.dart';
import 'package:hero_card/screens/screen_space/components/screen_space_image.dart';

class ScreenSpace extends StatelessWidget {
  final Space space;

  ScreenSpace({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space №${space.id}'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ScreenSpaceImage(space: space),
              ScreenSpaceDescription(space: space)
            ],
          ),
        ),
      ),
      floatingActionButton: ScreenSpaceButton(id: space.id),
    );
  }
}
