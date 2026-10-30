import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 40),

          CustomTextField(hint: "Title"),
          SizedBox(height: 15),
          CustomTextField(hint: "Content", maxline: 5),
          AddNoteButton(ontap: () {}),
        ],
      ),
    );
  }
}
