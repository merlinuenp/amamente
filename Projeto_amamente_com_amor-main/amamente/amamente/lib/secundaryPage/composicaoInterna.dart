import 'package:flutter/material.dart';

class ComposicaoInterna extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Composição interna'),
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
            '''    Amamentação com Amor é um aplicativo diferenciado que possui um olhar centrado para o cuidado das mamães, além de também trazer informações importantes do recém-nascido(RN).

   Ele é capaz de sanar todas as dúvidas das lactantes desde de tipos de aleitamento materno, anatomia e fisiologia das mamas, tipos de leite materno, técnica correta para amamentar, tipos de mama, prevenção e manejo das principais intercorrências mamárias( fissuras ,mastite, ingurgitamento), aleitamento e cárie dentária no bebê(higiene bucal),aspecto psicológicos, mitos sobre aleitamento materno, ordenha de leite do seio e cuidados com RN( higiene do coto, posição do bebê entre outros) com o amamentação com Amor tudo isso se tornará mais simples neste período tão delicado e essencial que é a amamentação.
 
   Com esse aplicativo você terá um conteúdo didático de forma 100% confiável e acesso durante as 24 horas do dia, se tornando excelente aliado às mães, e o melhor de tudo é que ele é um app ofertado de forma gratuita, sendo necessário fazer somente o cadastro para utilizá-lo.
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
