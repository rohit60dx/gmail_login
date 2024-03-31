import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExampleState();
  }

}
class ExampleState extends State<Example> {  @override
final myController = TextEditingController();

@override
void dispose() {
  // Clean up the controller when the widget is disposed.
  myController.dispose();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Retrieve Text Input'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: myController,
      ),
    ),
    floatingActionButton: Column(
      children: [
        FloatingActionButton(
          // When the user presses the button, show an alert dialog containing
          // the text that the user has entered into the text field.
            onPressed: () {
             setState(() {
               myController.text;
             });
            },

          tooltip: 'Show me the value!',
          child: const Icon(Icons.text_fields),
        ),
        Text(myController.text),
      ],
    ),

  );

}
}
