import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_widget.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteWidget());
  }
}
