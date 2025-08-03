import 'package:flutter/material.dart';
import '../models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(place.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text('Категория: ${place.category}'),
            if (place.distance != null) Text('Расстояние: ${place.distance} км'),
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            place.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: place.isFavorite ? Colors.red : null,
          ),
          onPressed: () {},
        ),
        onTap: () => Navigator.pushNamed(context, '/details'),
      ),
    );
  }
}