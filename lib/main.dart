import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste Interfaces',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) :super(key: key);

  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  Widget build(BuildContext context){
    return Scaffold(
      appBar: _criarAppBar(),
      body: _criarBody(),
    );
  }
}

AppBar _criarAppBar(){
  return AppBar(
    title: const Text('Prática com interfaces'),
    actions: const [
      IconButton(
          icon: Icon(Icons.sync),
          onPressed: null,
      ),
    ],
  );
}

Widget _criarBody(){
  return ListView(
    children: [
      for(int i = 0; i < (Random().nextInt(3)+ 2); i++)
      Row(
        children: [
          for(int j = 0; j < (Random().nextInt(10)+ 2); j++)
          Expanded(
              child: CustomCard(label: 'Linha ${i+1} | Coluna ${j+1}',)
          )
        ],
      )
    ],
  );
}

class CustomCard extends StatelessWidget{
  final String label;

  const CustomCard({Key? key, required this.label}) : super(key: key);

  Widget  build(BuildContext context){
    return Card(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: SizedBox(
        height: 80,
        child: Center(
          child: Text(label),
        ),
      ),

    );
  }
}

