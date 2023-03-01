import 'package:flutter/material.dart';

class AspectosPsicologicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Aspectos psicológicos'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: letras(),
      );
}

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
            '''     A experiência de gerar um filho pode despertar diversas reações marcantes na vida da mulher, sendo estas fundamentais para a prática da amamentação exclusiva.
            ''',
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
