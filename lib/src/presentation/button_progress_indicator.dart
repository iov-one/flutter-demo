import 'package:flutter/material.dart';

class ButtonProgressIndicator extends StatelessWidget {
  const ButtonProgressIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Transform.scale(
        scale: 0.5,
        child: const CircularProgressIndicator(),
      );
}
