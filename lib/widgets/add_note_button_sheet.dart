import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(child: AddNoting()),
    );
  }
}

class AddNoting extends StatefulWidget {
  const AddNoting({super.key});

  @override
  State<AddNoting> createState() => _AddNotingState();
}

class _AddNotingState extends State<AddNoting> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autoValidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40),

          CustomTextField(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            hint: "Content",
            maxline: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 10),
          AddNoteButton(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                setState(() {});
              } else {
                log("there is an problem");
                autoValidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
