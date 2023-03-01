import 'package:amamente/secundaryPage/existeLeiteFraco.dart';
import 'package:amamente/secundaryPage/precisoComplementar.dart';
import 'package:amamente/secundaryPage/precisoHigienizar.dart';
import 'package:flutter/material.dart';

class MitosAleitamento extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Mitos sobre o aleitamento Materno'),
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
                fixedSize: MaterialStateProperty.all<Size>(Size(310, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 0),
              child: Text(
                "Preciso higienizar a mama toda vez quando for amamentar?",
                textAlign: TextAlign.center,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(310, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 1),
              child: Text(
                "Existe leite fraco?",
                textDirection: TextDirection.ltr,
              )),
          SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromARGB(255, 238, 149, 161)),
                fixedSize: MaterialStateProperty.all<Size>(Size(310, 60)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              onPressed: () => selectedItem(context, 2),
              child: Text(
                "preciso complementar o leite com fórmula?",
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
        builder: (context) => PrecisoHigienizar(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ExisteLeiteFraco(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PrecisoComplementar(),
      ));
      break;
  }
}
