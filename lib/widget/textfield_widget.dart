import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.preIcon,
      this.suIcon,
      required this.placeholder});
  final IconData preIcon;
  final IconData? suIcon;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(preIcon,size: 16,),
        suffixIcon: Icon(suIcon),
        hintText: placeholder,
        hintStyle: textTheme.labelMedium,
        filled: true,
        fillColor: colorScheme.primary.withOpacity(0.1),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
