// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test/app.dart';

void main() {
  group('CounterPage', () {
    goldenTest(
      'renders correctly on phone',
      fileName: 'counter_page_phone',
      builder: () => GoldenTestScenario(
        name: 'Phone View',
        constraints: const BoxConstraints(
          maxHeight: 667,
          maxWidth: 375,
          minHeight: 667,
          minWidth: 375,
        ),
        child: const MyHomePage(title: 'Counter App Phone'),
      ),
    );
    goldenTest(
      'renders correctly on tablet',
      fileName: 'counter_page_tablet',
      builder: () => GoldenTestScenario(
        name: 'Tablet View',
        constraints: const BoxConstraints(
          maxHeight: 768,
          maxWidth: 1366,
          minHeight: 768,
          minWidth: 1366,
        ),
        child: const MyHomePage(title: 'Counter App Tablet'),
      ),
    );
  });
}
