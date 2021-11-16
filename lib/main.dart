import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import "buscar.dart";

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tienda de Barrio grupo 04",
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBarrio")

        ),
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0 ),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Image.asset("image/barrio.png"),
                    ),
                 ),
              ),
              Padding(padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Búsqueda",
                  hintText: "Palabra clave de la búsqueda",
                )
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 0, bottom: 0),
                child: ElevatedButton(
                 onPressed: (){
                   print("Presionado");
                   Navigator.push(context, MaterialPageRoute(builder: (_)=> buscar() ));
                },
               child: Text("Buscar"),
               ),
             )
            ],
        )
        ),
      ),


    );
  }
}