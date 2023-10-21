import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      this.label,
      required this.preIcon,
      required this.placeholder,
      this.suIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.extend});
  final String? label;
  final IconData preIcon;

  final String placeholder;
  final Widget? suIcon;
  final bool obscureText;
  final bool readOnly;
  final Widget? extend;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextStyle labelStyle = textTheme.labelMedium!.copyWith(
        color: colorScheme.onSurface.withOpacity(0.5),
        fontWeight: FontWeight.bold);
    TextStyle placeholderStyle = textTheme.labelMedium!.copyWith(
        color: colorScheme.onSurface.withOpacity(0.2),
        fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (label) != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                  child: Text(
                    label!,
                    style: labelStyle,
                  ),
                )
              : const SizedBox(),
          Row(
            children: [
              Expanded(
                child: TextField(
                  readOnly: readOnly,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      preIcon,
                      size: 16,
                    ),
                    suffixIcon: suIcon,
                    hintText: placeholder,
                    hintStyle: placeholderStyle,
                    filled: true,
                    fillColor: readOnly ? colorScheme.primary.withOpacity(0.1) : colorScheme.primary.withOpacity(0.05),
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
                ),
              ),
              (extend) != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: extend,
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
