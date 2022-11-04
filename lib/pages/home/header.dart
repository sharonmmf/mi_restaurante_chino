import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 130,
      width: size.width,
      child: Stack(
        children: [
          SizedBox(
            height: 130,
            width: size.width,
            child: Image.asset("assets/header.jpg", fit: BoxFit.fill,),),
            Container(
              height: 130,
              width: size.width,
              color: Colors.black26
            ),
            // ignore: prefer_const_constructors
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.black45,
                    child: const Text(
                      "Mi restaurante Chino", 
                      style: TextStyle(color: Colors.white, fontSize: 30)
                    ),
                  ),
                ],
              ),
            ),
        ],
      )

    );
  }
}