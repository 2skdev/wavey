import 'package:flutter/material.dart';

import '../widget/track_row.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('User Name'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit_rounded))
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Column(children: [
                Center(
                  child: CircleAvatar(
                    radius: 48,
                  ),
                ),
                Row(
                  children: [Text('post'), Text('follow'), Text('folower')],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                )
              ]),
            ),
            TrackRowWidget()
          ],
        ));
  }
}
