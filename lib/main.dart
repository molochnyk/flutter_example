import 'package:flutter/material.dart';
import 'package:flutter_example/core/network/dio_request_service.dart';
import 'package:flutter_example/data/manager/character_manager.dart';
import 'package:flutter_example/services/character_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 33, 2, 204),
        ),
      ),
      home: const MyHomePage(title: 'Home Page Title'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final CharacterManager _characterManager;

  @override
  void initState() {
    super.initState();

    final requestService = DioRequestService();
    final characterService = CharacterService(requestService);
    _characterManager = CharacterManager(characterService);

    testCharacterManager();
  }

  Future<void> testCharacterManager() async {
    try {
      final characters = await _characterManager.getCharacters();
      for (final c in characters) {
        print(c.name);
      }
    } catch (e) {
      print("Error loading characters: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('Home Page Preview')],
        ),
      ),
    );
  }
}
