import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:share_web/share_web.dart';

void main() {
  test('adds one to input values', () async {
    final calculator = ShareWebPlugin();
    expect(await calculator.handleMethodCall(MethodCall('share', '')), '');
  });
}
