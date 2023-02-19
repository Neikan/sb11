// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hero_card/models/space.dart';
import 'package:hero_card/screens/screen_space/screen_space.dart';
import 'package:hero_card/screens/screen_spaces/components/card_space_button.dart';
import 'package:hero_card/screens/screen_spaces/components/card_space_description.dart';
import 'package:hero_card/screens/screen_spaces/components/card_space_image.dart';

class CardSpace extends StatelessWidget {
  final Space space;

  CardSpace({
    super.key,
    required this.space,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        child: Stack(
          children: [
            Column(
              children: [
                CardSpaceImage(space: space),
                CardSpaceDescription(space: space),
              ],
            ),
            CardSpaceButton(id: space.id),
          ],
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ScreenSpace(space: space),
            ),
          );
        },
      ),
    );
  }
}
