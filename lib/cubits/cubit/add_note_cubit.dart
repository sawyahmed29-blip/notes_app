import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  dynamic addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box(knoteBox);
      emit(AddNoteSuccess());
      await notebox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
