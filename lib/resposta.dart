import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(28, 8, 28, 8),
      child: RaisedButton(
        textColor: Colors.white,
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
