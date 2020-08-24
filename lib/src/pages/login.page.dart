import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/src/blocs/login.bloc.dart';
import 'package:flutter_form_bloc/src/blocs/provider.bloc.dart';
import 'package:flutter_form_bloc/src/widget/input.widget.dart';
import 'package:flutter_form_bloc/src/widget/fondo_login.widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Stack(children: <Widget>[_crearFondo(context), _loginForm(context)]),
    );
  }

  Widget _loginForm(BuildContext context) {
    final bloc = Provider.of(context);

    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(height: 180),
          ),
          Container(
            width: size.width * 0.85,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 0.5),
                      spreadRadius: 0.1)
                ],
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Text(
                  'Ingreso',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20,
                ),
                _crearEmail(bloc),
                SizedBox(
                  height: 15,
                ),
                _crearPassword(bloc),
                SizedBox(
                  height: 30,
                ),
                _crearBoton()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearPassword(LoginBloc bloc) {
    final InputDecoration inputD = InputDecoration(
        icon: Icon(
          Icons.lock_outline,
          color: Colors.deepPurple,
        ),
        labelText: 'Password');

    return StreamBuilder(
        stream: bloc.passwordStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return InputWidget(
              inputData: inputD,
              inputType: TextInputType.visiblePassword,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              obscure: true);
        });
  }

  Widget _crearBoton() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text('Ingresar'),
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      textColor: Colors.white,
      color: Colors.deepPurple,
      onPressed: () {},
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    return StreamBuilder(
        stream: bloc.emailStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return InputWidget(
              inputData: _inputDecoratorEmail(snapshot),
              inputType: TextInputType.emailAddress,
              onChangedFn: bloc.changeEmail,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              obscure: false);
        });
  }

  Widget _crearFondo(BuildContext context) {
    return FondoLoginWidget();
  }

  InputDecoration _inputDecoratorEmail(AsyncSnapshot snapshot) {
    return InputDecoration(
        icon: Icon(
          Icons.alternate_email,
          color: Colors.deepPurple,
        ),
        hintText: 'exapmle@domain.com',
        labelText: 'Email',
        counterText: snapshot.data.toString().length.toString());
  }
}
