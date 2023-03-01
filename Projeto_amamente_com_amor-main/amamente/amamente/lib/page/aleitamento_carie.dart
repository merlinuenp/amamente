import 'package:amamente/secundaryPage/causasCarie.dart';
import 'package:amamente/secundaryPage/higienaBucal.dart';
import 'package:amamente/secundaryPage/meiosPrevencao.dart';
import 'package:amamente/secundaryPage/primeirosSinais.dart';
import 'package:flutter/material.dart';

class AleitamentoCarie extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Aleitamento e cárie dentária'),
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
                "Causas",
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
                "Primeiros sinais",
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
                "Meios de prevenção",
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
                "higiene bucal do bebê",
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
        builder: (context) => CausaCaries(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PrimeirosSinais(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MeiosPrevencao(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HigienaBucal(),
      ));
      break;
  }
}
