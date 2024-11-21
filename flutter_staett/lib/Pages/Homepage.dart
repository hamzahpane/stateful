import 'package:flutter/material.dart';
import 'package:flutter_staett/Pages/RumusBalok.dart';
import 'package:flutter_staett/Pages/RumusTabung.dart';
import 'package:flutter_staett/Pages/RumusVolprisma.dart';
import 'package:flutter_staett/Pages/persegi_panjang.dart';
import 'package:flutter_staett/Pages/register.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Materi Stateful',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Border radius 15
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersegiPanjang()));
                  },
                  child: Text(
                    " Persegi Panjang ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Border radius 15
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    " Register Mengirim data ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Border radius 15
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rumusbalok()));
                  },
                  child: Text(
                    " Rumus Vol Balok  ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Border radius 15
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Rumusvolprisma()));
                  },
                  child: Text(
                    " Rumus Vol Prisma  ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15), // Border radius 15
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rumustabung()));
                  },
                  child: Text(
                    " Rumus Vol Tabung  ",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
