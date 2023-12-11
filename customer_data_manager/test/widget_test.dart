// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:customer_data_manager/ui/home.dart';

void main() {
  testWidgets(
      'Given the home page is open'
      'Then i see a create button'
      'And i see a Read button'
      'And i see an Update button'
      'And i see a Delete button', (WidgetTester tester) async {
    await tester
        .pumpWidget(const MaterialApp(home: MyHomePage(title: "CrudApp")));
    await tester.pump();

    // Verify the initial state of the main page
    expect(find.text('Create'), findsOneWidget);
    expect(find.text('Read'), findsOneWidget);
    expect(find.text('Update'), findsOneWidget);
    expect(find.text('Delete'), findsOneWidget);
  });

  
}
