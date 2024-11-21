import 'package:flutter/material.dart';
import 'package:flutter_staett/src/mixins/ValidationBlok.dart';

class Rumusvolprisma extends StatefulWidget {
  const Rumusvolprisma({super.key});

  @override
  State<Rumusvolprisma> createState() => _RumusvolprismaState();
}

class _RumusvolprismaState extends State<Rumusvolprisma> {
  final _formKey = GlobalKey<FormState>();

  num v = 0;
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  TextEditingController tinggi = TextEditingController();

  void volprisma() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        v = 0.5 *
            num.parse(panjang.text) *
            num.parse(lebar.text) *
            num.parse(tinggi.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rumus Volume Prisma",
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
                    controller: panjang,
                    decoration: InputDecoration(
                      labelText: "Panjang",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: Validationblok.validate,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: lebar,
                    decoration: InputDecoration(
                      labelText: "Lebar",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: Validationblok.validate,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tinggi,
                    decoration: InputDecoration(
                      labelText: "Tinggi",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: Validationblok.validate,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: volprisma,
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
