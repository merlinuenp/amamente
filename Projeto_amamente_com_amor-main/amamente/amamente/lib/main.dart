import 'package:amamente/page/splash.dart';
import 'package:flutter/material.dart';
import 'package:amamente/widget/Menu_Superior.dart';
import 'package:amamente/page/amamentacao.dart';
import 'package:amamente/page/ordenha_seio.dart';
import 'package:amamente/page/cuidados_recem.dart';
import 'package:amamente/page/sobre_nos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const MyHomePage(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const Splash(),
          '/amamentacao': (_) => Amamentacao(),
          '/ordenha': (_) => OrdenhaSeio(),
          '/cuidadoRecemNascidos': (_) => CuidadosRecem(),
          '/sobreNos': (_) => SobreNos(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuSuperior(),
      appBar: AppBar(
        title: const Text('Amamentação Com Amor'),
        backgroundColor: Color.fromARGB(255, 238, 149, 161),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/amamentacao');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                      color: Color.fromARGB(255, 238, 149, 161),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 100,
                    width: 400,
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/logo.png',
                          height: 45,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Amamentação',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/ordenha');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                      color: Color.fromARGB(255, 238, 149, 161),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 100,
                    width: 400,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Ordenha de leite',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/cuidadoRecemNascidos');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                      color: Color.fromARGB(255, 238, 149, 161),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 100,
                    width: 400,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Cuidados com o recém-nascido',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sobreNos');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(120)),
                      color: Color.fromARGB(255, 238, 149, 161),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(15),
                    height: 100,
                    width: 400,
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/logo.png'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Sobre nós',
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: Colors.pinkAccent,
                                  offset: Offset(5.0, 5.0),
                                ),
                              ],
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            color: Color.fromARGB(255, 240, 188, 195),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/logo_uenp.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Projeto UENP',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
