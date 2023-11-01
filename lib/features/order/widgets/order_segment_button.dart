import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderSegmentButton extends StatelessWidget {
  const OrderSegmentButton(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onTap});

  final String title;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: onTap,
            child: AnimatedContainer(
                padding: EdgeInsets.symmetric(vertical: 8.w),
                alignment: Alignment.center,
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                    color: isActive ? HexColor('#EA560D') : HexColor('#919EAB'),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(title,
                    style: TextStyle(
                        color:
                            isActive ? Colors.white : HexColor('#E7ECF0'))))));
  }
}
