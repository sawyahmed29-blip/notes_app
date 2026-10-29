import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_items.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(color: Colors.amber),
        child: NotsCardChilds(),
      ),
    );
  }
}
