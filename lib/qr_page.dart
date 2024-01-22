import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_challenge/playlist_data.dart';

class QrPage extends StatelessWidget {
  final Map<String, String> playlistItem;

  const QrPage({Key? key, required this.playlistItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var index = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            index['title'] ?? 'Title'), // Use the title from the playlistItem
      ),
      body: Center(
        child: QrImageView(
          data: index['url'],
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
