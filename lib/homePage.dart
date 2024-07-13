import 'package:flutter/material.dart';
import 'package:myapp/loginPage.dart';
import 'package:myapp/profilPage.dart';
import 'dart:math' as math;

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // tampilan halaman home
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Home'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // tombol kehalaman profil
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profilpage(),
                      ),
                    );
                  },
                  child: const Text('profil'),
                ),
                // tombol kehalaman kembali atau login
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginpage(),
                      ),
                    );
                  },
                  child: const Text('Kembali'),
                ),
              ],
            ),
            // fungsi tampilan ganti warna
            const btnChageColor()
          ],
        ),
      ),
    );
  }
}

// class state full untuk merubah warna
class btnChageColor extends StatefulWidget {
  const btnChageColor({super.key});

  @override
  State<btnChageColor> createState() => _btnChageColorState();
}

class _btnChageColorState extends State<btnChageColor> {
  int state = 0XFF5ACCE5;
  @override
  Widget build(BuildContext context) {
    // mendeteksi ketika di tap
    return GestureDetector(
      onTap: () {
        print('state untuk ganti warna');
        setState(() {
          // atur random warna
          state = (math.Random().nextDouble() * 0xFFFFFF).toInt();
        });
      },
      child: Column(
        children: [
          // box dengan tinggi 20 px
          const SizedBox(
            height: 20,
          ),
          // widget container untuk membuat kotak
          Container(
            color: Color(state).withOpacity(1.0),
            height: 100,
            width: 300,
            child: const Center(
              child: Text('Tekan Untuk Ganti Warna'),
            ),
          ),
        ],
      ),
    );
  }
}
