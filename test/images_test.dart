import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:f_test_work/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.address).existsSync(), isTrue);
    expect(File(Images.city).existsSync(), isTrue);
    expect(File(Images.country).existsSync(), isTrue);
    expect(File(Images.date).existsSync(), isTrue);
    expect(File(Images.email).existsSync(), isTrue);
    expect(File(Images.phone).existsSync(), isTrue);
    expect(File(Images.user).existsSync(), isTrue);
    expect(File(Images.zipcode).existsSync(), isTrue);
  });
}
