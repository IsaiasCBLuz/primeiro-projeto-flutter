import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
main(){
  runApp(const PrimeiroApp());
}

class PrimeiroApp extends StatelessWidget {
  const PrimeiroApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu Primeiro App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page', style: TextStyle(fontSize: 30, color: Colors.white)),
        backgroundColor: const Color.fromRGBO(125, 96, 161, 1),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Every Purchase",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          const Text(
            "Will be Made",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          const Text(
            "With Pleasure",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          const Text("Buy and Enjoy", style: TextStyle(fontSize: 20, color: Colors.black)),
          SizedBox(height: 20), // Espaço
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(125, 96, 161, 1),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20),
              ),
            ),
            onPressed: (){
              print("Clicou no botão");
            },
            child: const Text("Start Shopping", style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height: 20), // Espaço
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.0),
                    side: BorderSide(color: Colors.purple),
                  ),
                ),
              ),
                onPressed: () {
                  print("Quer aprender mais.");
                },
                child: const Text(
                  "Learn More",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(width: 20), // Espaço entre os botões
              ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                      side: BorderSide(color: Colors.purple),
                    ),
                  ),
                ),
                onPressed: (){
                  print("Ta tentando fazer login.");
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ]
          ),
          const Padding(
            padding: EdgeInsets.all(80.0),
            child: Icon(Icons.home, size: 50, color: Colors.purple),
          )
        ],
      ),
    );
  }
  
}