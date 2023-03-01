import 'package:flutter/material.dart';

class PrecisoHigienizar extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Preciso higienizar?'),
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
            '''   Mito, mantenha os hábitos de higiene normalmente
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
