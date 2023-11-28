import 'package:flutter/material.dart';
import '../pages/anuncios_page.dart';
import '../pages/dados_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Inaper'),
            backgroundColor: Colors.green,
            centerTitle: false,
            leading: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                '../imagens/logo2.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.work)),
            ]),
          ),
          body: TabBarView(
              children: [
               const AnunciosPage(),
              Builder(builder: (context) => DadosPage(),)
              ],
          )),
    );
  }
}
