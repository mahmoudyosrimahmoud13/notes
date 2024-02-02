import 'package:flutter/material.dart';
import 'package:notes/widgets/add_image.dart';

class NoteBottomBar extends StatelessWidget {
  const NoteBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.alarm_add_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.color_lens_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.label_outline)),
            IconButton(
                onPressed: () {
                  print('dklkds');
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddImage();
                    },
                  );
                },
                icon: const Icon(Icons.add_a_photo_rounded)),
            Text(
              'date',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            )
          ],
        ));
  }
}
