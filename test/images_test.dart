import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:eco_market/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.categorycard1).existsSync(), isTrue);
    expect(File(Images.categorycard2).existsSync(), isTrue);
    expect(File(Images.categorycard3).existsSync(), isTrue);
    expect(File(Images.categorycard4).existsSync(), isTrue);
    expect(File(Images.categorycard5).existsSync(), isTrue);
    expect(File(Images.categorycard6).existsSync(), isTrue);
  });
}
