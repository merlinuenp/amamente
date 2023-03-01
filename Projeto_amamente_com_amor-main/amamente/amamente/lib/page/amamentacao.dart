import 'package:amamente/secundaryPage/ImpotanciaAmamentacao.dart';
import 'package:amamente/secundaryPage/beneficiosAmamentacao.dart';
import 'package:flutter/material.dart';

const corPadrao = Color.fromARGB(255, 238, 149, 161);

class Amamentacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Amamentação'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 238, 149, 161),
        ),
        body: botao(context),
      );
}

Widget botao(BuildContext context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 0),
              child: Text(
                "Importância da amamentação",
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 0),
              child: Text("Beneficios do leite materno")),
        ],
      ),
    ),
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ImportanciaAmamentacao(),
      ));
      break;

    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BeneficiosAmamentacao(),
      ));
      break;
  }
}
