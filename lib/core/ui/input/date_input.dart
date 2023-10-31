import 'package:f_test_work/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DateInput extends StatelessWidget {
  const DateInput({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showPlatformDatePicker(
              context: context,
              initialDate: DateTime.now().add(const Duration(days: 1)),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 60)));
        },
        child: AbsorbPointer(
            absorbing: true,
            child: TextFormField(
              onTap: () {},
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                icon: SvgPicture.asset(
                  Images.address,
                  color: const Color(0xffFF5D2A),
                  height: 20,
                ),
                onPressed: () {},
              )),
            )));
  }
}
