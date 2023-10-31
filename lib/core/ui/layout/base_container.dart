import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 12),
      child: child,
    );
  }
}
