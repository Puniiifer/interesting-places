import 'package:flutter/material.dart';
import '../widgets/place_card.dart';
import '../models/place.dart';

class ListScreen extends StatelessWidget {
  // Заглушка для списка мест
  final List<Place> places = List.generate(
    10,
    (index) => Place(
      id: index,
      name: 'Место $index',
      description: 'Описание места $index, очень интересное место для посещения.',
      category: 'Музей',
      imageUrl: '',
      distance: 1.5 * index,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Поиск...',
            suffixIcon: IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {},
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return PlaceCard(place: places[index]);
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
        currentIndex: 0,
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