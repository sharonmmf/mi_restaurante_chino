import 'package:flutter/material.dart';
import 'package:mi_restaurante_chino/pages/home/header.dart';
import 'package:mi_restaurante_chino/pages/home/lista_de_platillos.dart';

class Menu extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Menu({Key? key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 214, 202, 196),
            // color: Colors.blac,
        
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Header(),
                // const SizedBox(height: 10),
                const ListaDePlatillos()
            
              ],
            ),
          
        ),
      ),
    );
  }
}