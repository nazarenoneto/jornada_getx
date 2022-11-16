import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviado params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SendParamsPage1();
                    },
                    settings: const RouteSettings(
                        arguments: "Parâmetro pelo flutter nativo"),
                  ),
                );
              },
              child: const Text("Got to Page1 com Flutter Nativo"),
            ),
            TextButton(
              onPressed: () {
                Get.to(const SendParamsPage1(),
                    arguments: "Parâmetro pelo GetX");
              },
              child: const Text("Got to Page1 com GetX"),
            ),
          ],
        ),
      ),
    );
  }
}
