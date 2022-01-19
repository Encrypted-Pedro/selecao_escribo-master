import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CaixaTexto extends StatelessWidget {
  var _controller = new TextEditingController();
  String _hint = "";
  bool _erro = false;
  Icon _icone;
  @override
  CaixaTexto(this._controller, this._hint, this._erro, this._icone);
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _controller,
        maxLength: 4,
        keyboardType: TextInputType.number,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: _erro == true ? Colors.red : Colors.grey,
              width: _erro == true ? 2 : 1,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          hintText: _hint,
          labelText: _hint,
          labelStyle: TextStyle(
            color: _erro == true ? Colors.red : Colors.grey,
          ),
          prefixIcon: _icone,
        ),
      ),
    );
  }
}
