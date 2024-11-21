import 'package:flutter/material.dart';
import 'dart:math';

class Rumustabung extends StatefulWidget {
  const Rumustabung({super.key});

  @override
  State<Rumustabung> createState() => _RumustabungState();
}

class _RumustabungState extends State<Rumustabung> {
  final _formKey = GlobalKey<FormState>();
  num v = 0;
  TextEditingController jariJariController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  // Fungsi untuk menghitung volume tabung
  void voltabung() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        double jariJari = double.parse(jariJariController.text);
        double tinggi = double.parse(tinggiController.text);
        v = pi * pow(jariJari, 2) * tinggi;
      });
    }
  }

  // Fungsi validator untuk input kosong
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Harus diisi';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rumus Volume Tabung",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: jariJariController,
                    decoration: InputDecoration(
                      labelText: "Jari-jari",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: validate,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tinggiController,
                    decoration: InputDecoration(
                      labelText: "Tinggi",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: validate,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: voltabung,
                    child: Text("Hitung Volume"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hasil: $v",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
