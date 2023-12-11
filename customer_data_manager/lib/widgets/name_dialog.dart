import 'package:flutter/material.dart';

class NameDialog extends StatelessWidget {
  NameDialog({super.key});

  String firstName = '';
  String lastName = '';
  static const Key firstNameDialogInputFieldKey =
      Key('NameDialog_firstNameInputFieldKey');
  static const Key lastNameDialogInputFieldKey =
      Key('NameDialog_lastNameInputFieldKey');
  static const Key submitButtonDialogKey = Key('NameDialog_submitButtonKey');

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  alignment: Alignment.center,
                ))),
        AlertDialog(
          title: const Text('Enter Name'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                key: firstNameDialogInputFieldKey,
                onChanged: (value) {},
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                key: lastNameDialogInputFieldKey,
                onChanged: (value) {},
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              key: submitButtonDialogKey,
              onPressed: () {
                Navigator.of(context).pop();
                // _submitName(firstName, lastName); // Call a function to handle the submission
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ],
    );
  }
}
