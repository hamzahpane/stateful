import 'package:flutter/material.dart';
import 'package:flutter_staett/src/mixins/ValidationBlok.dart';

class Rumusbalok extends StatefulWidget {
  const Rumusbalok({super.key});

  @override
  State<Rumusbalok> createState() => _RumusbalokState();
}

class _RumusbalokState extends State<Rumusbalok> {
  final _formKey = GlobalKey<FormState>();
  num v = 0;

  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  void volblok() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        v = num.parse(panjangController.text) *
            num.parse(lebarController.text) *
            num.parse(tinggiController.text);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mencari Volume Balok",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: panjangController,
                    decoration: InputDecoration(
                      labelText: "Panjang",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: Validationblok.validate,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                      controller: lebarController,
                      decoration: InputDecoration(
                        labelText: "Lebar",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: Validationblok.validate),
                  SizedBox(height: 20),
                  TextFormField(
                      controller: tinggiController,
                      decoration: InputDecoration(
                        labelText: "Tinggi",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: Validationblok.validate),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: volblok,
                    child: Text("Hitung Volume"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hasil: $v",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
