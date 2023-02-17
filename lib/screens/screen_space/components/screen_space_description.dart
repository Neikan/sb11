// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';

class ScreenSpaceDescription extends StatelessWidget {
  final Space space;

  ScreenSpaceDescription({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '${space.id}-description',
      child: Material(
        child: Text(space.description),
      ),
    );
  }
}
