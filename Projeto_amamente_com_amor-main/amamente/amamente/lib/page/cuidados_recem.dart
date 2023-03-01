import 'package:amamente/secundaryPage/banhoRescemnascido.dart';
import 'package:amamente/secundaryPage/calendarioVacinal.dart';
import 'package:amamente/secundaryPage/manobrasDesengasgo.dart';
import 'package:amamente/secundaryPage/trocaDeFraudas.dart';
import 'package:flutter/material.dart';

class CuidadosRecem extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Cuidados com recém-nascidos'),
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
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 0),
              child: Text("Caledário vacinal")),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 1),
              child: Text(
                "Manobras de desengasgo",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 2),
              child: Text(
                "Troca de frauda",
                textDirection: TextDirection.ltr,
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
              onPressed: () => selectedItem(context, 3),
              child: Text(
                "Banho em recém-nascidos",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(250, 60)),
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 4),
              child: Text(
                "Cuidados com o coto umbilical",
                textDirection: TextDirection.ltr,
              )),
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
        builder: (context) => CalendarioVacinal(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ManobraDesengasgo(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TrocaDeFraudas(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BanhoRecem(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CuidadosRecem(),
      ));
      break;
  }
}
