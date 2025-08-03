import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/list_screen.dart';
import 'screens/search_screen.dart';
import 'screens/map_screen.dart';
import 'screens/details_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(InterestingPlacesApp());
}

class InterestingPlacesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Интересные места',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/list': (context) => ListScreen(),
        '/search': (context) => SearchScreen(),
        '/map': (context) => MapScreen(),
        '/details': (context) => DetailsScreen(),
        '/favorites': (context) => FavoritesScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}