import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                Navigator.of(context)
                    .pop("retornando parametro por flutter nativo");
              },
              child: const Text("Retornando com param com Flutter Nativo"),
            ),
            TextButton(
              onPressed: () async {
                Get.back(result: "Retornando parametros por GetX");
              },
              child: const Text("Retornando com param com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
