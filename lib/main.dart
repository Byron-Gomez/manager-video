import 'package:flutter/material.dart';
import 'package:manager_video/config/theme/app_theme.dart';
import 'package:manager_video/presentation/providers/discover_providers.dart';
import 'package:manager_video/presentation/screens/discover_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider
    (providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage())

    ],
    child: MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme: Apptheme().getTheme(),
      home: const DiscoverScreen())
  
    );
    }
}