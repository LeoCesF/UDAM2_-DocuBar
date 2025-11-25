import 'package:flutter/material.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  List<String> productos = ['Producto1', 'Producto2', 'Producto3'];
  late List<int> contadores;

  @override
  void initState() {
    super.initState();
    contadores = List<int>.filled(productos.length, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos de la carta')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Card(child: ListTile(title: Text(productos[index]))),
                      ),
                      ElevatedButton(
                        child: Text("-"),
                        onPressed: () {
                          setState(() {
                            if (contadores[index] > 0) {
                              contadores[index]--;
                            }
                          });
                        }, 
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(contadores[index].toString()),
                      ),
                      ElevatedButton(
                        child: Text("+"),
                        onPressed: () {
                          setState(() {
                            contadores[index]++;
                          });
                        }, 
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
