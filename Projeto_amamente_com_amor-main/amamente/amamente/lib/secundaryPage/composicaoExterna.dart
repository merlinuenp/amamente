import 'package:flutter/material.dart';

class ComposicaoExterna extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Composição externa'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: letras(),
      );
}

@override
Widget letras() {
  return Center(
    child: Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(3.0),
      height: 900,
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(
            ''' Finge que tem um texto grande ou alguma imagem aqui (LUGAR PARA POR TEXTOS GRANDES)  ''',
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Color.fromARGB(255, 238, 149, 161),
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 3,
              wordSpacing: 3,
            ),
          ),
        ),
      ),
    ),
  );
}
