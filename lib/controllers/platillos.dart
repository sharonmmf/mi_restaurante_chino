
import 'dart:async';

import 'package:mi_restaurante_chino/db/db.dart';
import 'package:mi_restaurante_chino/models/platillos.dart';
import 'package:http/http.dart' as http;


 Future<List<Platillo>> getPlatillos()async{
  try {
    return platillos;
    
  } catch (e) {
    print("error obteniendo platillos");
    return [];
  }
}

Future<Platillo> editarPlatillo(Platillo platillo)async {
 
    return platillo;
}

Future<bool> eliminarPlatillo(String id)async {

  platillos.removeWhere((element) => element.id == id);
 
    return true;
}