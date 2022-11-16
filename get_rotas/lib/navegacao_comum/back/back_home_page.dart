import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const BackPage1();
                }));
              },
              child: const Text("Got to Page com Flutter Nativo"),
            ),
            TextButton(
              onPressed: () {
                Get.to(const BackPage1());
              },
              child: const Text("Got to Page com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
