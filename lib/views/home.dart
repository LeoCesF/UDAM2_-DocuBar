import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pedidos = ['Placeholder1', 'Placeholder2', 'Placeholder3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bar')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Lista de pedidos:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pedidos.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(title: Text(pedidos[index])),
                );
              },
            ),
          ),
          ElevatedButton(
            child: Text("Añadir pedido"),
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
          ),    
        ],
      ),
    );
  }
}
