import 'package:flutter/material.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';


class tela2 extends StatefulWidget {
  const tela2({ Key? key }) : super(key: key);

  @override
  State<tela2> createState() => _tela2State();
}

class _tela2State extends State<tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("QR CODE"),
      centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding:EdgeInsets.all(20),
          child: Column(
            children: [
              ElevatedButton(onPressed:() {
                Navigator.pop(context);
              },
              child: Text("Voltar")),
           QrImage(data:"www.slmm.com.br",
           version: QrVersions.auto,
           size: 200.0,
           gapless: false,
  )
            ],
          ),
        ),
      ),
    );
  }
}