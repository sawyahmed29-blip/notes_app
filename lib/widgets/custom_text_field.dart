import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
  });
  final String hint;
  final int maxline;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is empty";
        } else {
          return null;
        }
      },
      cursorColor: kprimaryColor,
      maxLines: maxline,

      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(vertical: 16),

        border: buildingBorder(color: Colors.blueGrey),
      ),
    );
  }

  OutlineInputBorder buildingBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.cyanAccent),
    );
  }
}
