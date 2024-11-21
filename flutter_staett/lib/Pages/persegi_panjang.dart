import 'package:flutter/material.dart';
// import 'package:flutter_staett/src/mixins/Validation.dart';

class PersegiPanjang extends StatefulWidget {
  const PersegiPanjang({super.key});

  @override
  State<PersegiPanjang> createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
// membuat key valditation rom
  final formKey = GlobalKey<FormState>();

  // Variabel luas dan controller untuk panjang dan lebar
  num luas = 0;
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();

  // Fungsi hitung luas
  void hitungLuas() {
    setState(() {
      luas = num.parse(panjang.text) * num.parse(lebar.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Luas Persegi Panjang",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Text("Mencari Luas Persegi Panjang"),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: panjang,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return " Filed Panjanga harus di isi ";
                        }
                        return null;
                      }, // Menggunakan controller panjang
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Input nilai Panjang"),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: lebar,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return " Filed Lebar harus di isi ";
                        }
                        return null;
                      }, // Menggunakan controller lebar
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Input nilai Lebar"),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          hitungLuas();
                        }
                      }, // Panggil fungsi hitungLuas
                      child: Text("Hitung"),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            Text("Hasil: $luas")
          ],
        ),
      ),
    );
  }
}
