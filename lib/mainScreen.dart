import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qrcodevesp/Tela2.dart';
import 'package:qrcodevesp/Tela3.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({ Key? key }) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  final controller = TextEditingController(text:"Digite aqui ");

@override
void dispose(){
  controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Qr Code"),
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          
          padding:EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(onPressed:() {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const tela2()));
              },
              child: Text("Gerar QR CODE"),),
              TextFormField(
               controller: controller,
                decoration: InputDecoration(labelText: "QrCode text",
                hintText: "Digite Aqui",
                errorText: "Digite corretamente sua Anta",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),suffixIcon: Icon(Icons.qr_code_2)),
              ),
           SizedBox(height: 15,),
           ElevatedButton(onPressed:() {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> tela3(str: controller.text,)));
           },child: Text("QR CODE2"),)
              
            ],
          ),
        ),
      ),
    );
  }
}