import 'package:flutter/material.dart';

class DrawerBuider extends StatelessWidget {
  DrawerBuider({super.key});
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Row(
            children: [
              Icon(
                Icons.description,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Text(
                'Simple notes',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          height: 1,
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary,
        ),
        NavigationDrawerDestination(
            icon: Icon(Icons.notes), label: Text('Notes')),
        NavigationDrawerDestination(
            icon: Icon(Icons.alarm), label: Text('Alarm')),
        Container(
          margin: EdgeInsets.all(15),
          height: 1,
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Categories',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        NavigationDrawerDestination(
            icon: Icon(Icons.label), label: Text('Sample')),
        Container(
          margin: EdgeInsets.all(15),
          height: 1,
          width: double.infinity,
          color: Theme.of(context).colorScheme.primary,
        ),
        NavigationDrawerDestination(
            icon: Icon(Icons.archive_rounded), label: Text('Archive')),
        NavigationDrawerDestination(
            icon: Icon(Icons.settings), label: Text('Settings')),
      ],
    );
  }
}
