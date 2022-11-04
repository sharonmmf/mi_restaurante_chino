import 'package:flutter/material.dart';
import 'package:mi_restaurante_chino/controllers/platillos.dart';
import 'package:mi_restaurante_chino/db/db.dart';
import 'package:mi_restaurante_chino/models/platillos.dart';
import 'package:mi_restaurante_chino/pages/menu.dart';


class EditarPlatillo extends StatefulWidget {
   dynamic platillo;
   int index;
 EditarPlatillo({super.key,this.platillo, required this.index});

  @override
  State<EditarPlatillo> createState() => _EditarPlatilloState();
}

class _EditarPlatilloState extends State<EditarPlatillo> {
  
  String name = "";
  double value = 0;
  String urlImage = "assets/header.jpg";
  
  @override
  void initState() {
    if(widget.platillo != null){
      name = widget.platillo!.name;
      value = widget.platillo!.value;
      urlImage = widget.platillo!.urlImage;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.platillo.name),
        backgroundColor: Colors.brown[900],
        leading: 
          IconButton(
            onPressed: () => Navigator.pushReplacement(
              context, 
              // ignore: prefer_const_constructors
              MaterialPageRoute(builder: (context) =>  Menu()),), icon: Icon(Icons.arrow_back_ios))
        
        ),
      body: Center(
        child: Container(
          // color: Color.fromARGB(255, 214, 202, 196),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            
            children: [
    
              Container(
                child: TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Nombre",
                  ),
                  controller: TextEditingController(text: name),
                  onChanged: (String newValue){
                    name = newValue;
    
                  },
    
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 12,),
              TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: "Nombre",
      
                ),
                keyboardType: TextInputType.number,
                controller: TextEditingController(text: "$value"),
                
                onChanged: (String newValue){
    
                  double val = double.parse(newValue);
                  value = val;
    
                },
                
              ),
              const SizedBox(height: 30,),
              MaterialButton(
                color: Colors.green,
                child: const Center(child: Text("Guardar Cambios", style: TextStyle(color: Colors.white))),
                onPressed: () async {

                  Platillo platillo = Platillo(id: widget.platillo.id, name: name, value: value, urlImage: urlImage);
                platillos[widget.index] = await editarPlatillo(platillo,);

                Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) =>  Menu()));
    
              }),
              const SizedBox(height: 10,),
               MaterialButton(
                color: Color.fromARGB(255, 156, 34, 26),
                child: const Center(child: Text("Elimminar platillo", style: TextStyle(color: Colors.white))),
                onPressed: () async {

                  // Platillo platillo = Platillo(id: widget.platillo.id, name: name, value: value, urlImage: urlImage);
                await eliminarPlatillo(widget.platillo.id);

                // ignore: use_build_context_synchronously
                Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) =>  Menu()));
                
    
              })
    
            ],)
        )
      ),
    );
  }
}