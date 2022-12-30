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
        body: Container(
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
                    const Text('Aprendendo Flutter'),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_drop_up_sharp))
                  ]),
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
        ),
      ),
    );
  }
}
