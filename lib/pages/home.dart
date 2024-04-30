import 'package:appmovies/models/actividad.dart';
import 'package:appmovies/services/User_Services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ActividadModel? _actividad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(171, 10, 79, 134),
          title: const Text('Movie - Max'),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.menu, size: 35.0),
                    margin: const EdgeInsets.all(10.0),
                    color: Color.fromARGB(171, 10, 79, 134),
                    width: 70.0,
                    height: 50.0,
                  ),
                  Icon(Icons.movie, size: 35.0),
                  Container(
                    child: Icon(Icons.search, size: 35.0),
                    margin: const EdgeInsets.all(10.0),
                    color: Color.fromARGB(171, 10, 79, 134),
                    width: 70.0,
                    height: 50.0,
                  ),
                ],
              ),
              MaterialButton(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      color: Colors.blue,
                      child: Text(
                        'Bienvenido a Movie - Max',
                        style: TextStyle(color: Colors.white),
                      )),
                  onPressed: () async {
                    this._actividad = await UserServices().getIdeas();
                    setState(() {});
                  }),
              if (this._actividad != null) Text(this._actividad!.activity!),
              Container(
                child: Text('Vista principal de Ultimos Estrenos',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center),
                margin: const EdgeInsets.all(10.0),
                color: Color.fromARGB(171, 10, 79, 134),
                width: 500.0,
                height: 120.0,
              ),
              Container(
                child: Text('Vista principal de Todas las Peliculas',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center),
                margin: const EdgeInsets.all(10.0),
                color: Color.fromARGB(171, 10, 79, 134),
                width: 500.0,
                height: 120.0,
              ),
              Container(
                child: Text('Vista principal de Generos',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center),
                margin: const EdgeInsets.all(10.0),
                color: Color.fromARGB(171, 10, 79, 134),
                width: 500.0,
                height: 120.0,
              ),
            ],
          ),
        ));
  }
}
