// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_second/controllers/opensea_controller.dart';
import 'package:rest_api_second/models/opensea_model.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rest API Cryptopunks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends GetWidget {
  MyHomePage({super.key});

  OpenseaController openseaController = Get.put(OpenseaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest API Cryptopunks'),
      ),
      body: Obx(() => openseaController.isLoading.value 
       ? const Center(child: CircularProgressIndicator())
       : ListView.builder(
         itemCount: openseaController.openseaModel?.assets?.length,
         itemBuilder: ((context, index) {
          return ListTile(
             title: Text(openseaController.openseaModel?.assets![index].name ?? 'Not found'),
             subtitle: Text(openseaController.openseaModel?.assets![index].description ?? 'Not found'),
             leading: openseaController.openseaModel?.assets![index].imageUrl == null 
              ? Icon(Icons.image)
              : Image.network(openseaController.openseaModel!.assets![index].imageUrl),
              onTap: () {
                _laucherInBrower(Uri.parse(openseaController.openseaModel!.assets![index].permalink));
              },
          );
        })
      )
    )
    );
  }
}

Future<void> _laucherInBrower(Uri url) async{
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}