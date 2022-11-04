
class Platillo{
  final String name;
  final double value;
  final String urlImage;
  final String id;

  Platillo({required this.name, required this.value, required this.urlImage, required this.id});
  
    factory Platillo.fromJson(Map<String, dynamic> json){

      return Platillo(
        id: json["id"], 
        name: json["name"], 
        value: json["value"], 
        urlImage: json["urlImage"], 
        );
    }


    Map<String, dynamic> toJson(Platillo platillo){
        return {
          "id": platillo.id, 
          "name": platillo.name, 
          "value": platillo.value, 
          "urlImage": platillo.urlImage, 
          };
      }

}