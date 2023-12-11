import 'package:flutter/material.dart';

class FirstNameInputField extends StatelessWidget {
  const FirstNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: const InputDecoration(labelText: 'First Name'),
    );
  }
}
