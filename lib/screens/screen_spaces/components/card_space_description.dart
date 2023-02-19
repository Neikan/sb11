// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';

class CardSpaceDescription extends StatelessWidget {
  final Space space;

  CardSpaceDescription({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '${space.id}-description',
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Material(
          child: Text(
            space.description,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
