import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ImportanciaAmamentacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Importância da Amamentação'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 238, 149, 161),
      ),
      body: conteudo());
}

@override
Widget conteudo() {
  return Center(
    child: Container(
      child: Column(children: <Widget>[
        Text(
          '''O Aleitamento Materno Exclusivo (AME) é uma das principais práticas que promovem a saúde com reflexos positivos durante toda a vida. Repercute não somente no estado nutricional da criança, mas também no seu sistema imunológico, na sua fisiologia, no desenvolvimento cognitivo e emocional, trazendo benefícios para o bebê e também para a saúde psíquica e física da mãe no pós-parto. É de grande relevância a amamentação exclusiva até o sexto mês, pois o leite materno é composto por todos os nutrientes indispensáveis como por exemplo: água, proteínas, vitaminas, gorduras, minerais, imunoglobulinas, enzimas com vantagens nutritivas e sais minerais. Já está devidamente comprovada, por estudos científicos, a superioridade do leite materno sobre os leites de outras espécies. ''',
        ),
        Image.asset(
          'assets/images/importancia.jpg',
          height: 90,
        ),
        Text("Jiló"),
        Text("Para saber mais, veja o vídeo"),
        IconButton(
          icon: const Icon(Icons.video_collection),
          onPressed: () async {
            var video = Uri.parse("https://youtu.be/guJ-V2PR42Q");
            if (await canLaunchUrl(video)) {
              await launchUrl(video);
            } else {
              throw 'Could not launch $video';
            }
          },
        ),
      ]),
    ),
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
            '''O Aleitamento Materno Exclusivo (AME) é uma das principais práticas que promovem a saúde com reflexos positivos durante toda a vida. Repercute não somente no estado nutricional da criança, mas também no seu sistema imunológico, na sua fisiologia, no desenvolvimento cognitivo e emocional, trazendo benefícios para o bebê e também para a saúde psíquica e física da mãe no pós-parto. É de grande relevância a amamentação exclusiva até o sexto mês, pois o leite materno é composto por todos os nutrientes indispensáveis como por exemplo: água, proteínas, vitaminas, gorduras, minerais, imunoglobulinas, enzimas com vantagens nutritivas e sais minerais. Já está devidamente comprovada, por estudos científicos, a superioridade do leite materno sobre os leites de outras espécies. ''',
            textAlign: TextAlign.justify,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Color.fromARGB(255, 18, 16, 17),
              //fontWeight: FontWeight.bold,
              fontSize: 14.0,
              fontFamily: "comic sans",
              letterSpacing: 3,
              wordSpacing: 3,
            ),
          ),
        ),
      ),
    ),
  );
}
