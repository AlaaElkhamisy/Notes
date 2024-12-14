import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/core/app_colors.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/customs/custom_button.dart';
import 'package:note_app/customs/custom_text_field.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/colors_listView.dart';

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({super.key});

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {
  final GlobalKey<FormState> formKey = GlobalKey();
  //autovalidateMode to worrn user if he entered wrong value of leave the field empty
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    //wrap with form to validate data before saving in the database
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorsListview(),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              // check the data validation then save the data in the database
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formattedCurrentDate =
                    DateFormat('dd MMMM yyyy').format(currentDate);
                var noteModel = NoteModel(
                    title: title!,
                    content: content!,
                    date: formattedCurrentDate,
                    color: AppColors.color1.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }
              // in this point the field may be empty so we activated the autovalidation by always
              else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
