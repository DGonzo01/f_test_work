import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CommonTextInput extends StatelessWidget {
  const CommonTextInput({
    super.key,
    required this.title,
    required this.hint,
    required this.icon,
    required this.formControlName,
    this.ignoring = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.autofillHints,
  });

  final String title;
  final String hint;
  final String icon;
  final String formControlName;
  final bool ignoring;
  final bool obscureText;
  final TextInputType keyboardType;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
        ignoring: ignoring,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title.isNotEmpty) Text(title),
            ReactiveTextField(
              formControlName: formControlName,
              // controller: controller,
              autofillHints: autofillHints,
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                  hintText: hint,
                  prefixIcon: IconButton(
                    icon: SvgPicture.asset(
                      icon,
                      color: const Color(0xffFF5D2A),
                      height: 20,
                    ),
                    onPressed: () {},
                  )),
            )
          ],
        ));
  }
}
