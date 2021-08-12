import 'package:flutter/material.dart';
import 'package:netflix/componentes/cartel_principal.dart';
import 'package:netflix/componentes/item_imagen.dart';
import 'package:netflix/componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Novedades en Netflix', ItemImagen(), 5),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Tendencias', ItemImagen(), 5),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Mi Lista', ItemImagen(), 5),
          SizedBox(
            height: 10,
          ),
          this.listaHorizontal('Series Premiadas', ItemImagen(), 5),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check),
            label: 'Próximamente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward),
            label: 'Descargas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Más',
          ),
        ]);
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          child: Container(
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context, index) {
                return item;
              },
            )
          )
        )
      ],
    );
  }
}
