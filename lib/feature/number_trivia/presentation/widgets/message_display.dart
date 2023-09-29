import 'package:flutter/material.dart';

class MessageDisplay extends StatelessWidget {
  String message;
  Color color;

  MessageDisplay({
    required this.message,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Text(
          message,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "GameFamily",
            color: color
          )
        ),
      ),
    );
  }
}
