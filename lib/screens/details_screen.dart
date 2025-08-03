import 'package:flutter/material.dart';
import '../models/place.dart';

class DetailsScreen extends StatelessWidget {
  final Place place = Place(
    id: 1,
    name: 'Пример места',
    description: 'Подробное описание места, которое вы хотите посетить.',
    category: 'Музей',
    imageUrl: '',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(child: Text('Фото (заглушка)')),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Категория: ${place.category}'),
                  SizedBox(height: 8),
                  Text(place.description),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                        label: Text('Поделиться'),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                        label: Text('В избранное'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}