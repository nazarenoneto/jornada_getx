import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OFF Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const OffPage1();
                }));
              },
              child: const Text("Got to Page1 com Flutter Nativo"),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffPage1());
              },
              child: const Text("Got to Page1 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
