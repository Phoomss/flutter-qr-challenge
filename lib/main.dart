import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_challenge/playlist_page.dart';
import 'package:qr_challenge/qr_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: () => const PlaylistPage()),
        GetPage(name: "/qr", page:()=> const QrPage()),
      ],
    );
  }
}