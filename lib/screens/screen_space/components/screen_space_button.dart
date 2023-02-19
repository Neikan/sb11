// Flutter imports:
import 'package:flutter/material.dart';

class ScreenSpaceButton extends StatelessWidget {
  final String id;

  ScreenSpaceButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {},
      heroTag: '$id-button',
    );
  }
}
