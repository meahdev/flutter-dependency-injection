
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'app_storage.dart';
import 'controller.dart';
import 'icounter_repo.dart';
import 'injector.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    YourControllerClass(getIt<ICounterRepo>()).getData();
    final appStorage = getIt<AppStorage>();
    final appStorage2 = getIt<AppStorage>();
    final dio = getIt<Dio>();
    final dio2 = getIt<Dio>();
    print('${appStorage.hashCode} ${appStorage2.hashCode} and ${dio.hashCode} ${dio2.hashCode}');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hey There !',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}