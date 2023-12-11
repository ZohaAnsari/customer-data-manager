import 'package:flutter/material.dart';

class LastNameInputField extends StatelessWidget {
  const LastNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // key: lastNameInputFieldKey,
      onChanged: (value) {},
      decoration: const InputDecoration(labelText: 'Last Name'),
    );
  }
}
