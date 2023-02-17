// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';

class CardSpaceImage extends StatelessWidget {
  final Space space;

  CardSpaceImage({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: space.id,
      child: SizedBox(
        height: 96,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          space.image,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
