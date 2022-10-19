import 'package:flutter/material.dart';

class TrackRowWidget extends StatelessWidget {
  const TrackRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CircleAvatar(
              child: Text('UN'),
            ),
            Text('User Name')
          ],
        ),
        Row(
          children: const [Icon(Icons.music_note_rounded), Text('Track Info')],
        ),
      ],
    );
  }
}
