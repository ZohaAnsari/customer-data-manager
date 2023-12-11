import 'package:customer_data_manager/ui/create_form.dart';
import 'package:customer_data_manager/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:customer_data_manager/widgets/name_dialog.dart';

class Controller {
  String determineOperation(Operation operation) {
    switch (operation) {
      case Operation.CREATE:
        return 'Create';
      case Operation.READ:
        return 'Read';
      case Operation.UPDATE:
        return 'Update';
      case Operation.DELETE:
        return 'Delete';
    }
  }

  determineAction(Operation operation, context) {
    switch (operation) {
      case Operation.CREATE:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CreateForm()));
        break;
      case Operation.READ:
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return NameDialog();
            });
        break;
      case Operation.UPDATE:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NameDialog()));
        break;
      case Operation.DELETE:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NameDialog()));
        break;
    }
  }
}
