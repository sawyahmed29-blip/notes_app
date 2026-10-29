import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_search_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 100),
        Text("Notes", style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchButton(),
      ],
    );
  }
}
