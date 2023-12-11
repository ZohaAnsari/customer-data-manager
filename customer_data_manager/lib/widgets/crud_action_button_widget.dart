import 'package:customer_data_manager/controller/controller.dart';
import 'package:customer_data_manager/utils/enum.dart';
import 'package:flutter/material.dart';

class CRUDActionButtonWidget extends StatelessWidget {
  final Operation operation;
  CRUDActionButtonWidget({super.key, required this.operation});

  final Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(controller.determineOperation(operation)));
  }
}
