import 'package:flutter/material.dart';

class Result2 extends StatelessWidget {
  const Result2(
      {super.key,
      required this.namaLengkap,
      required this.email,
      required this.noWa});

  final String namaLengkap, email;
  final int noWa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Text("nama Lengkap : ${namaLengkap}"),
            Text("Email : ${email}"),
            Text("No WA : ${noWa}"),
          ],
        ),
      ),
    );
  }
}
