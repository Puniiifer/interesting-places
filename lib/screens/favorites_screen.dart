import 'package:flutter/material.dart';
import '../widgets/place_card.dart';
import '../models/place.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Place> favorites = [
    Place(
      id: 1,
      name: 'Избранное место',
      description: 'Описание избранного места',
      category: 'Кафе',
      imageUrl: '',
      isFavorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Избранное')),
      body: favorites.isEmpty
          ? Center(child: Text('Нет избранных мест'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                return PlaceCard(place: favorites[index]);
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Список'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Карта'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Избранное'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
        ],
        currentIndex: 3,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/list');
              break;
            case 1:
              Navigator.pushNamed(context, '/search');
              break;
            case 2:
              Navigator.pushNamed(context, '/map');
              break;
            case 3:
              Navigator.pushNamed(context, '/favorites');
              break;
            case 4:
              Navigator.pushNamed(context, '/settings');
              break;
          }
        },
      ),
    );
  }
}