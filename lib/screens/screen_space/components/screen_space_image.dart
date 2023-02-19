// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';

class ScreenSpaceImage extends StatelessWidget {
  final Space space;

  ScreenSpaceImage({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: space.id,
      child: Container(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Image.asset(
          space.image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
