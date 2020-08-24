import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/src/widget/circular.widget.dart';

class FondoLoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _fondo(context),
        Positioned(top: 90.0, left: 30.0, child: _crearCirculo()),
        Positioned(top: -45.0, right: -30.0, child: _crearCirculo()),
        Positioned(bottom: -50.0, right: -10.0, child: _crearCirculo()),
        Positioned(bottom: 90.0, right: 30.0, child: _crearCirculo()),
        _crearIcono()
      ],
    );
  }

  Widget _fondo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.40,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(63, 63, 156, 1.0),
          Color.fromRGBO(90, 70, 178, 1.0)
        ])));
  }

  Widget _crearCirculo() {
    return CircularWidget(
        color: Color.fromRGBO(255, 255, 255, 0.05),
        borderRadius: BorderRadius.circular(100.0),
        width: 100.0,
        height: 100.0);
  }

  Widget _crearIcono() {
    return Container(
      height: 300.0,
      width: 500.0,
      padding: EdgeInsets.only(top: 80.0),
      child: Column(
        children: <Widget>[
          Icon(Icons.person_pin_circle, color: Colors.white, size: 100),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          )
        ],
      ),
    );
  }
}
