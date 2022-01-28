import 'paginaActividades.dart';
import 'paginaAjustes.dart';
import 'paginaDescubrir.dart';
import 'paginaMovilidad.dart';
import 'paginaRutas.dart';
import 'package:flutter/material.dart';

class paginaInicio extends StatefulWidget {
  paginaInicio({Key? key}) : super(key: key);

  @override
  _paginaInicioState createState() => _paginaInicioState();
}

class _paginaInicioState extends State<paginaInicio> {
  PageController controladorPaginas = PageController();

// Lista de las distintas pantallas a enlazar con la navbar.
  List<Widget> pantallas = [
    paginaDescubrir(),
    paginaActividades(),
    paginaMovilidad(),
    paginaRutas(),
    paginaAjustes(),
  ];

  int indiceSeleccion = 0;

  void enPaginaCambiada(int indice) {
    setState(() {
      indiceSeleccion = indice;
    });
  }

  // Función que permite cambiar visibilidad entre pantallas.
  void enItemSeleccionado(int indiceSeleccion) {
    controladorPaginas.jumpToPage(indiceSeleccion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controladorPaginas,
        children: pantallas,
        //Con la función "enPaginaCambiada" se relacionan las páginas con la navbar.
        onPageChanged: enPaginaCambiada,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indiceSeleccion,
        onTap: enItemSeleccionado,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.shade100,
        // Botones de la navbar.
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Descubrir'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: 'Actividades'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pedal_bike), label: 'Movilidad'),
          BottomNavigationBarItem(icon: Icon(Icons.alt_route), label: 'Rutas'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
      ),
    );
  }
}
