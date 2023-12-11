import 'package:customer_data_manager/utils/enum.dart';

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
}
