import 'package:flutter/material.dart';

class Profilpage extends StatelessWidget {
  const Profilpage({super.key});

  @override
  Widget build(BuildContext context) {
    // halaman profil
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Profil'),
            // tombol untuk kembali
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            )
          ],
        ),
      ),
    );
  }
}
