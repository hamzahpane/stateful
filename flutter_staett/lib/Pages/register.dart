import 'package:flutter/material.dart';
import 'package:flutter_staett/Pages/result2.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nama = TextEditingController();
  TextEditingController moWa = TextEditingController();
  TextEditingController email = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form Registrasi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Form(
            key: formkey,
            child: ListView(
              children: [
                Text("Nama Lengkap"),
                TextFormField(
                  controller: nama,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("No WA"),
                TextFormField(
                  controller: moWa,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "No tidak boleh kosong";
                    } else if (value.length < 10) {
                      return "No tidak boleh kurang dari 10 digit";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Text("Email"),
                TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email tidak boleh kosong";
                    } else if (!value.contains("@")) {
                      return "Email tidak valid";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                TextButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result2(
                              namaLengkap: nama.text,
                              email: email.text,
                              noWa: int.parse(moWa.text),
                            ),
                          ),
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Latar belakang biru

                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text("Kirim Data",
                        style: TextStyle(color: Colors.white))),
              ],
            )),
      ),
    );
  }
}
