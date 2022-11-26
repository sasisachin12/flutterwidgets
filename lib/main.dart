import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Column(

        children: [
          MyAppBar(
            title: Text(
              'Android to Flutter',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: const Text("Am textView"),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Am a EditText ',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: TextButton(
              onPressed: () {
                "";
              },
              child: const Text('Am Text Button'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                "";
              },
              child: const Text('Am Elevated Button'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: OutlinedButton(
              onPressed: () {
                "";
              },
              child: const Text(' Am Outlined Button'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: CheckboxListTile(
                checkColor: Colors.white,
                value: true,
                onChanged: (bool? value) {},
                title: Text("Am check box")),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: const Image(
                width: 100,
                height: 120,
                image: AssetImage('assets/images/aaa.jpeg')),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
