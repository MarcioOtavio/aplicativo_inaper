import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/assistidos_page.dart';
import '../pages/home_page.dart';
import '../cadastro/routes.dart';
import 'pages/tarefas_page.dart';
import '../cadastro/pessoa.dart';

main() => runApp(const MyApp());

class CadastroPage {
  final Pessoa usuario = Pessoa();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(scheme: FlexScheme.amber),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
      routes: {
      Routes.PAGINA_DADOS: (context) => TarefasPage(),
      Routes.PAGINA_ASSISTIDO:(context) => AssistidosPage(),
      }
    );
  }
}
