import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:eco_market/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bag).existsSync(), isTrue);
    expect(File(Images.clock).existsSync(), isTrue);
    expect(File(Images.helpSquare).existsSync(), isTrue);
    expect(File(Images.home03).existsSync(), isTrue);
    expect(File(Images.home).existsSync(), isTrue);
    expect(File(Images.infoImage).existsSync(), isTrue);
    expect(File(Images.instagram).existsSync(), isTrue);
    expect(File(Images.phone).existsSync(), isTrue);
    expect(File(Images.whatsapp).existsSync(), isTrue);
  });
}
