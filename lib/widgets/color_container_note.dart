import 'package:flutter/material.dart';

Widget colorContainerNote(Color color, func) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: MaterialButton(
        onPressed: func,
      ),
    ),
  );
}
