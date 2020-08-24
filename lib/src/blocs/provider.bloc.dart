import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/src/blocs/login.bloc.dart';

class Provider extends InheritedWidget {
  final LoginBloc loginBloc = LoginBloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;
  }
}
