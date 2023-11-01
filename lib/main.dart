import 'package:device_preview/device_preview.dart';
import 'package:f_test_work/app/application.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const Application(),
  ));
}
