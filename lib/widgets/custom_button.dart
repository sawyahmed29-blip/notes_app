// ignore: file_names
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color.fromARGB(255, 212, 230, 212).withValues(alpha: .1),
      ),
      child: Center(
        child: IconButton(onPressed: () {}, icon: icon),
      ),
    );
  }
}
