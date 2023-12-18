import 'package:flutter/material.dart';
import 'package:player_flutter/screens/album.dart';
import 'package:player_flutter/screens/components/responsive_page.dart';
import 'package:player_flutter/screens/home.dart';
import 'package:player_flutter/screens/player.dart';
import 'package:player_flutter/screens/playlist.dart';

import './responsive/desktop_screen.dart';
import './responsive/mobile_screen.dart';
import './responsive/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            backgroundColor: const Color.fromARGB(115, 26, 25, 25)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/home': (context) => const HomePage(),
        '/album': (context) => const AlbumPage(),
        '/player': (context) => const PlayerPage(),
        '/playlist': (context) => const PlaylistPage()
      },
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
  @override
  Widget build(BuildContext context) {
    return const ResponsivePage(
        screenMobile: MobileScreen(),
        screenDesktop: DesktopScreen(),
        screenTablet: TabletScreen());
  }
}
