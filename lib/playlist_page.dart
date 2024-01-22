import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_challenge/playlist_data.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayList'),
      ),
      body: ListView.builder(
        itemCount: playlist.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.video_file),
            title: Text(playlist[index]['title']!),
            subtitle: Text(playlist[index]['url']!),
            trailing: ElevatedButton(
              child: const Icon(Icons.qr_code),
              onPressed: () {
                Get.toNamed("/qr", arguments: playlist[index]);
              },
            ),
            onTap: () async {
              await _launchUrl(playlist[index]['url']!);
            },
          );
        },
      ),
    );
  }

  // Assuming you have the _launchUrl method defined somewhere
  Future<void> _launchUrl(String url) async {
    // Implementation of launching the URL
  }
}
