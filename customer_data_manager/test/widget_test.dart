// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:customer_data_manager/ui/create_form.dart';
import 'package:customer_data_manager/utils/enum.dart';
import 'package:customer_data_manager/widgets/crud_action_button_widget.dart';
import 'package:customer_data_manager/widgets/name_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:customer_data_manager/ui/home.dart';
import 'package:customer_data_manager/main.dart';

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

  group('CRUD buttons operations', () {
    testWidgets(
        'When i tap on Create button'
        'Then a form page appears', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Simulate tapping the Create button
      await tester.tap(find.text('Create'));
      await tester.pumpAndSettle();

      // Verify that the Create operation is performed
      expect(find.byType(CreateForm), findsOneWidget);
    });

    testWidgets(
        'When i tap on Read button'
        'Then a show dialog button appears', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Read'));
      await tester.pumpAndSettle();

      expect(find.byType(NameDialog), findsOneWidget);
    });

    testWidgets(
        'When i tap on Update button'
        'Then a show dialog button appears', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Update'));
      await tester.pumpAndSettle();

      expect(find.byType(NameDialog), findsOneWidget);
    });

    testWidgets(
        'When i tap on Delete button'
        'Then a show dialog button appears', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Delete'));
      await tester.pumpAndSettle();

      expect(find.byType(NameDialog), findsOneWidget);
    });
  });

  group('Dialog and CreateForm page test', () {
    
    testWidgets(
    'Given the create form is open'
        'Then i should see a first name field'
        'And i see a last name field'
        'And i see date of birth field'
        'And i see a phone number field'
        'And i see a Email field'
        'And i see a bank account number', (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: CreateForm()));
        await tester.pump();

        expect(find.byKey(CreateForm.firstnameInputKey), findsOneWidget);
        expect(find.byKey(CreateForm.lastnameInputKey), findsOneWidget);
        expect(find.byKey(CreateForm.dateofbirthInputKey), findsOneWidget);
        expect(find.byKey(CreateForm.phoneInputKey), findsOneWidget);
        expect(find.byKey(CreateForm.emailInputKey), findsOneWidget);
        expect(find.byKey(CreateForm.bankaccountInputKey), findsOneWidget);

  });
    testWidgets(
        'Given the Dialog is shown'
        'Then i see a first name input field'
        'And i see a last name input field'
        'And i see a submit button', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Read'));
      await tester.pumpAndSettle();
      expect(find.byKey(NameDialog.firstNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.lastNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.submitButtonDialogKey), findsOneWidget);
    });

    testWidgets(
        'Given the Dialog is shown'
        'Then i see a first name input field'
        'And i see a last name input field'
        'And i see a submit button', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Update'));
      await tester.pumpAndSettle();
      expect(find.byKey(NameDialog.firstNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.lastNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.submitButtonDialogKey), findsOneWidget);
    });

    testWidgets(
        'Given the Dialog is shown'
        'Then i see a first name input field'
        'And i see a last name input field'
        'And i see a submit button', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.text('Delete'));
      await tester.pumpAndSettle();
      expect(find.byKey(NameDialog.firstNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.lastNameDialogInputFieldKey), findsOneWidget);
      expect(find.byKey(NameDialog.submitButtonDialogKey), findsOneWidget);
    });

  });
}
