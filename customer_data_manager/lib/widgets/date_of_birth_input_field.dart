import 'package:flutter/material.dart';

class DateOfBirthInputField extends StatefulWidget {
  const DateOfBirthInputField({super.key});

  @override
  State<DateOfBirthInputField> createState() => _DateOfBirthInputFieldState();
}

class _DateOfBirthInputFieldState extends State<DateOfBirthInputField> {

  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: [
      ElevatedButton(onPressed: () => _selectDate(context), child: Text("Select date of birth")),
      SizedBox(height: 10),
      Text(selectedDate != null? 'Date of birth : ${selectedDate.toString().split(' ')[0]}' : 'Date of birth not selected'),
    ]),);
  }
}