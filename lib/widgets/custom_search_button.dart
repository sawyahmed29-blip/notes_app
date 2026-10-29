// ignore: file_names
import 'package:flutter/material.dart';

class CustomSearchButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: const Color.fromARGB(255, 252, 248, 248).withValues(alpha: .03),
      ),
      child: Icon(Icons.search, size: 28),
    );
  }
}
