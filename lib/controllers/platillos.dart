
import 'dart:async';

import 'package:mi_restaurante_chino/db/db.dart';
import 'package:mi_restaurante_chino/models/platillos.dart';
import 'package:http/http.dart' as http;


 Future<List<Platillo>> getPlatillos()async{
    return platillos;
   
 }

Future<Platillo> editarPlatillo(Platillo platillo)async {
    return platillo;
}

Future<bool> eliminarPlatillo(String id)async {

  platillos.removeWhere((element) => element.id == id);
 
    return true;
}

Future<Platillo> obtenerPlatilloPorId(String id)async {
    Platillo platillo = platillos.firstWhere((element) => element.id == id);
    return platillo;
}