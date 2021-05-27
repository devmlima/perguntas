import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    final respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Container(
      child: Column(
        children: <Widget>[
          Questao(
              '0${perguntaSelecionada + 1} - ${perguntas[perguntaSelecionada]['texto']}'),
          ...respostas.map((resp) {
            return Resposta(
              resp['texto'],
              () => quantoResponder(resp['pontuacao']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
