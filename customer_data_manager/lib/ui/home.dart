import 'package:customer_data_manager/utils/enum.dart';
import 'package:customer_data_manager/widgets/crud_action_button_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CRUDActionButtonWidget(operation: Operation.CREATE,),
            CRUDActionButtonWidget(operation: Operation.READ,),
            CRUDActionButtonWidget(operation: Operation.UPDATE),
            CRUDActionButtonWidget(operation: Operation.DELETE,),
          ],
        ),
      ),
    );
  }
}
