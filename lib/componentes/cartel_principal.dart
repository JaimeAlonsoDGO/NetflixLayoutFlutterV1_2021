import 'package:flutter/material.dart';
import 'package:netflix/componentes/navbar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[this.cabecera(), this.infoSerie(), this.botonera()],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/img/elite_portda.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black38, Colors.black])),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: NavBarSuperior()
          ),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Suspenso Insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'De Suspenso',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Column(
          children: [
            Icon(Icons.check, color: Colors.white,),
            SizedBox(height: 3.0,),
            Text('Mi Lista', style: TextStyle(color: Colors.white),),
          ],
        ),
        TextButton.icon(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)), icon: Icon(Icons.play_arrow, color: Colors.black,), label: Text('Reproducir', style: TextStyle(color: Colors.black),)),
        Column(
          children: [
            Icon(Icons.info_outline, color: Colors.white,),
            SizedBox(height: 3.0,),
            Text('Información', style: TextStyle(color: Colors.white),),
          ],
        ),
      ])
    );
  }
}
