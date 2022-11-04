import 'package:flutter/material.dart';
import 'package:mi_restaurante_chino/controllers/platillos.dart';
import 'package:mi_restaurante_chino/models/platillos.dart';
import 'package:mi_restaurante_chino/pages/platillos/editar_platillo.dart';

class ListaDePlatillos extends StatefulWidget {
  const ListaDePlatillos({super.key,});

  @override
  State<ListaDePlatillos> createState() => _ListaDePlatillosState();
}

class _ListaDePlatillosState extends State<ListaDePlatillos> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Platillo>>(
      future: getPlatillos(),
      builder: (context, snapshot) {
        Size size = MediaQuery.of(context).size;
        if(!snapshot.hasData){
          return const Center(
            child: Text("Cargando..."),
          );
        } 

        List<Platillo>? p = snapshot.data;

          return Container(
            height: size.height,
            child: ListView(
              children: [

                Column(
                  children: List.generate(p!.length, (int index){
                    return InkWell(
                      onTap: () => Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) =>  EditarPlatillo(platillo:  p[index], index: index )),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        height: 200,
                        width: size.width * 0.96,
                        child: Card(

                          child: Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                  width: size.width * 0.96,
                                child: Image.asset(p[index].urlImage, fit: BoxFit.fill)
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  color: Colors.black45,
                                  child: Text(
                                    p[index].name, 
                                    style: const TextStyle(
                                      color: Colors.white, 
                                      fontSize: 20
                                    ), 
                                  )
                                )
                              ),
                                
                            ],
                          )),),
                    );
                  }),),
              ],
            )
          );

        
      }
    );
  }
}