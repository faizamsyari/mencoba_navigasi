import 'package:flutter/material.dart';
import 'package:mencoba_navigasi/halamandua.dart';
import 'package:mencoba_navigasi/halamantiga.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Study"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text("Mencoba dan Belajar Navigation Pada Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          const Text("Nama:Faiz Amsyari Rustam",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          const Text("NIM: 1102210012",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green[700])),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const HalamanDua();
                  },
                ));
              },
              icon: const Icon(Icons.last_page),
              label: const Text(
                "Navigator Push",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue[700])),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return const HalamanTiga();
                  },
                ));
              },
              icon: const Icon(Icons.arrow_forward),
              label: const Text(
                "Navigator Push Replacement",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
