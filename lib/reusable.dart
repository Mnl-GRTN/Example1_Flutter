import 'package:flutter/material.dart';

class GroupButton extends StatelessWidget {
  const GroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
          onPressed: () {
            // Add onPressed code here!
          },
          child: const Text('Button'),
        ),
        TextButton(
          onPressed: () {
            // Add onPressed code here!
          },
          child: const Text('Button'),
        ),
      ],
    );
  }
}
