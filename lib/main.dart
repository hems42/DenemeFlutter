import 'package:denemeflutter/Burc/BurcInfo.dart';
import 'package:denemeflutter/Burc/BurcWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'Patient/Patient.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      backgroundColor: Colors.amber,
      accentColor: Colors.red.shade900,
    ),
    title: "deneme uygulaması",
    home: PatientForm(),
  ));
}

class PatientForm extends StatefulWidget {
  @override
  _PatientFormState createState() => _PatientFormState();
}

class _PatientFormState extends State<PatientForm> {
  Patient hasta_1 = new Patient();

  BurcWidgets bb= new BurcWidgets();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hasta Kayıt"),
          leading: Icon(Icons.add_circle_sharp),
          elevation: 11,
          backgroundColor: Colors.red.shade900,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Container(
          color: Colors.grey.shade400,
          child: bb.rowBurc(Burc()),
        ));
  }
}

class myTextFieldForm extends StatelessWidget {

  TextEditingController ctrl= new TextEditingController();

   myTextFieldForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctrl,
      maxLength: 30,
       expands: false,
      keyboardAppearance: Brightness.dark,
      onFieldSubmitted: (e)=>print(e) ,
      toolbarOptions: ToolbarOptions(),
      cursorRadius: Radius.circular(15),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        alignLabelWithHint: false,
        hintTextDirection: TextDirection.ltr,
        labelText: "ad",

        hintText: "ad..",
        fillColor: Colors.orange.shade50,
        border: OutlineInputBorder(
          gapPadding: 5,
          borderSide: BorderSide(
            color:Colors.red,
            width: 4,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20),),
          borderSide: BorderSide(
          color:Colors.red,
          width: 4,
          style: BorderStyle.solid,
        ),
        ),
        prefix: Text("prefix"),
      ),
    );
  }
}
