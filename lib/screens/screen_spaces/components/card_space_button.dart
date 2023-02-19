// Flutter imports:
import 'package:flutter/material.dart';

class CardSpaceButton extends StatelessWidget {
  final String id;

  CardSpaceButton({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80.0,
      right: 16.0,
      child: Hero(
        tag: '$id-button',
        child: Container(
          height: 32.0,
          width: 32.0,
          color: Colors.green,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
