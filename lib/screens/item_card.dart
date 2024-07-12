import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screens/details.dart';
import 'package:task1/screens/favorite_provider.dart';

class ItemCard extends StatefulWidget {
  final Map<String, dynamic> item;

  ItemCard({required this.item});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Details();
        }));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(widget.item['image'], fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.item['name'], style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Row(
                    children: widget.item['colors'].map<Widget>((color) {
                      return Container(
                        width: 12,
                        height: 12,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 8),
                  Text('¥${widget.item['price']}'),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                favoriteProvider.isFavorite(widget.item['name'])
                    ? Icons.favorite
                    : Icons.favorite_border,
              ),
              onPressed: () {
                favoriteProvider.toggleFavorite(widget.item['name']);
              },
            ),
          ],
        ),
      ),
    );
  }
}
