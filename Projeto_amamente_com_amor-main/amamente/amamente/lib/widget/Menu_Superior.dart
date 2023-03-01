import 'package:flutter/material.dart';
import 'package:amamente/page/anatomia_fisiologia.dart';
import 'package:amamente/page/tipos_aleitamento.dart';
import 'package:amamente/page/aleitamento_carie.dart';
import 'package:amamente/page/aspectos_psicologicos.dart';
import 'package:amamente/page/intercorrencias.dart';
import 'package:amamente/page/mitos_aleitamento.dart';
import 'package:amamente/page/sobre_app.dart';
import 'package:amamente/page/tecnica_amamentacao.dart';
import 'package:amamente/page/tipos_de_leite.dart';
import 'package:amamente/page/tipos_mamilos.dart';

class MenuSuperior extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 238, 149, 161),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Tipos de aleitamento materno',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Anatomia e físiologia das mamas',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Tipos de leite materno',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Tecnica correta para amamentar',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Tipos de mamilos',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Prevenção e manejo das intercorrências',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Aleitamento e cárie dentária',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 6),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Aspectos psicológicos',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 7),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Mitos sobre o aleitamento materno',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 8),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Curiosidades',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 9),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Sobre o app',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 10),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Color.fromARGB(255, 248, 247, 247);

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TiposDeAleitamento(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AnatomiaFisiologia(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TiposDeleite(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TecnicaDeAmamentacao(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TiposDeMamilos(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Intercorrencias(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AleitamentoCarie(),
        ));
        break;
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AspectosPsicologicos(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MitosAleitamento(),
        ));
        break;
      case 9:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SobreApp(),
        ));
        break;
    }
  }
}
