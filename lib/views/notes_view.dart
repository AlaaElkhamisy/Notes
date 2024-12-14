import 'package:flutter/material.dart';
import 'package:note_app/core/app_colors.dart';
import 'package:note_app/views/widgets/add_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              // here we allow the bottom sheet to expand to top when it needed
              isScrollControlled: true,
              backgroundColor: AppColors.color4,
              context: context,
              builder: (context) {
                return const AddBottomSheet();
              });
        },
        backgroundColor: AppColors.color4,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const NotesBody(),
    );
  }
}
