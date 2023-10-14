import 'package:flutter/material.dart';

void main() {
  runApp(const PlaceHolderApp());
}

class PlaceHolderApp extends StatelessWidget {
  const PlaceHolderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CleanProject',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const PlaceHolderHomeView(title: '👨‍💻 HAPPY CODING!'),
    );
  }
}

class PlaceHolderHomeView extends StatefulWidget {
  const PlaceHolderHomeView({super.key, required this.title});

  final String title;

  @override
  State<PlaceHolderHomeView> createState() => _PlaceHolderHomeViewState();
}

class _PlaceHolderHomeViewState extends State<PlaceHolderHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Have a productive day! 👍 🙂',
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
