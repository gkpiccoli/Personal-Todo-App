import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets - Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tarefas')),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Task('Viagens'),
            Task('Dicas de Hotéis e Bares'),
            Task(
                'Locais de visitação quando o dia estiver ensolarado ou você queira se aventurar'),
            Task('Negócios'),
            Task('Tendências'),
            Task('Cultura')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
        ),
      ),
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black26,
                    width: 72,
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      nome,
                      style: TextStyle(
                          fontSize: 24, overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.arrow_drop_up_sharp))
                ]),
          )
        ]),
      ),
    );
  }
}
