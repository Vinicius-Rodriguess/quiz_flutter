import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Perguntas")),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Pergunta 1', _responder),
            Resposta('Pergunta 2', _responder),
            Resposta('Pergunta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntAppState createState() {
    return _PerguntAppState();
  }
}
