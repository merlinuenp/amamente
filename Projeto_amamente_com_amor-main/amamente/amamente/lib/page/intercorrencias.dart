import 'package:amamente/secundaryPage/abcesso.dart';
import 'package:amamente/secundaryPage/bloqueioDuctos.dart';
import 'package:amamente/secundaryPage/candidiase.dart';
import 'package:amamente/secundaryPage/doresMamilo.dart';
import 'package:amamente/secundaryPage/fissuras.dart';
import 'package:amamente/secundaryPage/ingurgitamento.dart';
import 'package:flutter/material.dart';

class Intercorrencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Prevenção e manejo das intercorrências'),
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
                "Ingurgitamento mamário",
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
              onPressed: () => selectedItem(context, 1),
              child: Text(
                "Bloqueio dos ductos mamários",
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
              onPressed: () => selectedItem(context, 2),
              child: Text(
                "Abcesso mamário",
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
                "Candidíase ou infecção por fungos",
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
              onPressed: () => selectedItem(context, 4),
              child: Text(
                "Físsuras mamilares",
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
              onPressed: () => selectedItem(context, 5),
              child: Text(
                "Dores no mamilo",
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
        builder: (context) => Ingurgitamento(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BloqueioDuctos(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Abcesso(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Candidiase(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Fissuras(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DoresMamilos(),
      ));
      break;
  }
}
