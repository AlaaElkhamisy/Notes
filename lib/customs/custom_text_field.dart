import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines,
      this.onSaved,
      this.onChanged,
      this.scrollPhysics});
  final String hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final ScrollPhysics? scrollPhysics;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollPhysics: scrollPhysics,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        //hintStyle: TextStyle(color: AppColors.color1),
        border: Field_Border(),
        enabledBorder: Field_Border(),
        focusedBorder: Field_Border(Colors.white),
      ),
    );
  }

  OutlineInputBorder Field_Border([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.grey));
  }
}
