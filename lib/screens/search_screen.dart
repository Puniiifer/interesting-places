import 'package:flutter/material.dart';
import '../widgets/place_card.dart';
import '../models/place.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String query = '';
  List<Place> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Поиск...',
            suffixIcon: IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {}, // Фильтры позже
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          onChanged: (value) {
            // Имитация поиска
            setState(() {
              query = value;
              searchResults = query.length >= 3
                  ? [
                      Place(
                        id: 1,
                        name: 'Найденное место',
                        description: 'Описание найденного места',
                        category: 'Кафе',
                        imageUrl: '',
                      )
                    ]
                  : [];
            });
          },
        ),
      ),
      body: query.isEmpty
          ? Center(child: Text('Введите запрос для поиска'))
          : query.length < 3
              ? Center(child: Text('Введите минимум 3 символа'))
              : searchResults.isEmpty
                  ? Center(child: Text('Ничего не найдено'))
                  : ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        return PlaceCard(place: searchResults[index]);
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
        currentIndex: 1,
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