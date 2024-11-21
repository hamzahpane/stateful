import 'package:flutter/material.dart';

class Resultpage extends StatefulWidget {
  const Resultpage(
      {super.key,
      required this.namaLengkap,
      required this.nomorWa,
      required this.email});

  @override
  State<Resultpage> createState() => _ResultpageState();

  final String namaLengkap, nomorWa, email;
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 20, left: 20, top: 20),
        child: ListView(
          children: [
            Text("Nama : ${widget.namaLengkap}"),
            Text("Nomor WA : ${widget.nomorWa}"),
            Text("Email : ${widget.email}"),
          ],
        ),
      ),
    );
  }
}
