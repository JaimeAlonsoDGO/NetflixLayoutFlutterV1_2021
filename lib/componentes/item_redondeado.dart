import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(110.0),
                  border: Border.all(color: Colors.grey, width: 2.0)),
              child: ClipOval(
                  child: Image.network(
                'https://www.cabroworld.com/wp-content/uploads/2020/06/portada-dark-guia.jpg',
                fit: BoxFit.cover,
              ))),
          Image.network(
            'https://occ-0-1722-1723.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABa1HdAGKpHdlW-p-uzii35U-ZqxR5B_gaJEoQBRhA8-g3gwmQOZYO0pqR75YpyC0Q0HGVYGY1arAcicHw6u6GFTMlus2RsPsU32TpJOba3kJ_yLjLLb__bklRht2_wDdMGy2u3LehhKGL73YLfIZI5x-eFPSVUOpKsx05S4NTzJODg.png?r=50f',
            width: 100.0,
          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      )
    ]);
  }
}
