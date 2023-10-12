import 'package:flutter/material.dart';
import 'package:test_project/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first page"),
      ),
      drawer:  Drawer(
        backgroundColor: Colors.amberAccent,
        child: Column(
          children: [
            const DrawerHeader(child: Icon(Icons.abc_outlined, size: 48)),
            ListTile(
              leading: const Icon(Icons.ac_unit_outlined),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.ac_unit_outlined),
              title: const Text("Second Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/secondpage');
              },
            ),
            ],
        ),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("toSecond Page"),
        onPressed: () {
          // to second page
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => const SecondPage()));
          Navigator.pushNamed(context, '/secondpage');
        },
      )),
    );
  }
}
