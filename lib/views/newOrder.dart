
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(title: const Text('Añadir pedido')),
      body: Center(
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Introduce la mesa: "),
            SizedBox(
              width: 200,
              child: TextField(),
            ),
            ElevatedButton(
            child: Text("Añadir productos"),
            onPressed: () {
              Navigator.pushNamed(context, '/chose');
            },
          ),  
          Padding(padding: EdgeInsetsGeometry.all(24)),
          ElevatedButton( 
            child: Text("Ver Resumen"),
            onPressed: () {
              null;
            },
          ) 
          ]
      )
      )
    );
  }
}