import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'BurcInfo.dart';

class BurcWidgets {
  Widget rowBurc(Burc burcInfo) {
    var burcSatir = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.teal,
          backgroundImage: AssetImage(
            "assets/images/brc1.jpg",
          ),
        ),
        Text("burç başlık", style: TextStyle(fontSize: 25, color: Colors.red))
      ],
    );

    return burcSatir;
  }

  Widget listBurc(Burc burc) {
    var listBurc = ListView.builder(
        itemBuilder: (BuildContext context, int i) => rowBurc(burc));
  }
}
