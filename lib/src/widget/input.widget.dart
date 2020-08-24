import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final InputDecoration inputData;
  final TextInputType inputType;
  final EdgeInsets padding;
  final bool obscure;
  final Function onChangedFn;

  InputWidget(
      {@required this.inputData,
      @required this.inputType,
      @required this.padding,
      @required this.obscure,
      @optionalTypeArgs this.onChangedFn});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      child: TextField(
        obscureText: this.obscure,
        keyboardType: this.inputType,
        decoration: this.inputData,
        onChanged: this.onChangedFn,
      ),
    );
  }
}
