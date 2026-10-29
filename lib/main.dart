import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'stateful/fav_stateful.dart';
import 'provider/fav_model.dart';
import 'provider/fav_widget_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Gestion d\'état - Exemple'),
          ),
          body: const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('StatefulWidget'),
                FavWidget(),
                SizedBox(height: 24),
                Text('Provider - Vue 1'),
                FavWidgetProvider(),
                SizedBox(height: 24),
                Text('Provider - Vue 2'),
                FavWidgetProvider(),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
