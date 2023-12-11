import 'package:customer_data_manager/widgets/bank_account_input_field.dart';
import 'package:customer_data_manager/widgets/date_of_birth_input_field.dart';
import 'package:customer_data_manager/widgets/email_input_field.dart';
import 'package:customer_data_manager/widgets/first_name_input_field.dart';
import 'package:customer_data_manager/widgets/last_name_input_field.dart';
import 'package:customer_data_manager/widgets/phone_number_input_field.dart';
import 'package:flutter/material.dart';

class CreateForm extends StatelessWidget {
  const CreateForm({super.key});

  static const Key firstnameInputKey = Key('firstNameField');
  static const Key lastnameInputKey = Key('lastNameField');
  static const Key dateofbirthInputKey = Key('dateOfBirthField');
  static const Key phoneInputKey = Key('phoneNumberField');
  static const Key emailInputKey = Key('emailField');
  static const Key bankaccountInputKey = Key('bankAccountField');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a new User"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, 
        child: Column(
          children: [
            FirstNameInputField(key: CreateForm.firstnameInputKey),
            LastNameInputField(key: CreateForm.lastnameInputKey),
            DateOfBirthInputField(key: CreateForm.dateofbirthInputKey),
            PhoneNumberInputField(key: CreateForm.phoneInputKey),
            EmailInputField(key: CreateForm.emailInputKey),
            BankAccountInputField(key: CreateForm.bankaccountInputKey),

          ]
        )
      )
    );
  }
}