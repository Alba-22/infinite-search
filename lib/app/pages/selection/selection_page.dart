import 'package:flutter/material.dart';
import 'package:infinite_search/app/pages/complex/complex_page.dart';

import '../simple/simple_page.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Select the desired example",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Simple Example"),
            subtitle: const Text("A simple listing with infinite pagination"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SimplePage()),
              );
            },
          ),
          ListTile(
            title: const Text("Complex Example"),
            subtitle: const Text("A example with tabs, search text and filtering"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ComplexPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
