import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteWidget extends StatelessWidget {
  const EditNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(text: "EditNote", icon: Icon(Icons.check)),
          SizedBox(height: 20),
          CustomTextField(hint: "Title"),
          SizedBox(height: 20),

          CustomTextField(hint: "Content", maxline: 5),
        ],
      ),
    );
  }
}
