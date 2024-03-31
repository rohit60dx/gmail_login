import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableExample extends StatefulWidget
{

@override
  State<StatefulWidget> createState() {
    return TableExampleState();
  }
}
class TableExampleState extends State<TableExample> {  @override
int num=10;
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
      children: [
    for(var i=1;i<=10;++i)
    Text('$num * $i = ${num * i}'),
      ],
    ),
    );
  }
}
