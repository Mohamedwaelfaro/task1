import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screens/menue_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final teal = Color(0xff7993AE);

final gray = Color(0xffCFCFCF);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find the home furniture'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.read<MenueProvider>().toggleAll();
              },
              child: Selector<MenueProvider, bool>(
                  selector: (p0, p1) => p1.allSelected,
                  builder: (context, allSelected, _) {
                    return Container(
                      alignment: Alignment.center,
                      child: Text("All"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: allSelected ? teal : gray,
                      ),
                      width: 72,
                      height: 115,
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Image.asset('imgs/sofa-with-armrest-svgrepo-com 1.png'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xffCFCFCF),
              ),
              width: 70,
              height: 90,
            ),
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Image.asset('imgs/icons Q2.png'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xffCFCFCF),
              ),
              width: 70,
              height: 90,
            ),
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Image.asset('imgs/table-lights-svgrepo-com 1.png'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xffCFCFCF),
              ),
              width: 70,
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:provider/provider.dart';
// import 'favorite_provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => FavoriteProvider(),
//       child: MaterialApp(
//         home: HomeScreen(),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   final List<Map<String, dynamic>> items = [
//     {
//       'name': 'Room Sofa',
//       'image': 'imgs/sofa.png',
//       'price': 2500,
//       'colors': [Colors.brown, Colors.blue],
//     },
//     {
//       'name': 'Toshiba TV',
//       'image': 'imgs/image 1.png',
//       'price': 35250,
//       'colors': [Colors.black, Colors.grey],
//     },
//     {
//       'name': 'Table Lamp',
//       'image': 'imgs/kisspng-lighting-lamp-table-lamp-5a8bf96bc692e6 1.png',
//       'price': 550,
//       'colors': [Colors.orange, Colors.brown],
//     },
//     {
//       'name': 'Wood Table',
//       'image':
//           'imgs/kisspng-table-furniture-eames-lounge-chair-matbord-5adbc36d235a50 1.jpg',
//       'price': 905,
//       'colors': [Colors.brown, Colors.blue],
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Find the home furniture'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 FilterButton(icon: Icons.all_inclusive, label: 'All'),
//                 FilterButton(icon: Icons.directions_car, label: 'Car'),
//                 FilterButton(icon: Icons.tv, label: 'TV'),
//                 FilterButton(icon: Icons.laptop_mac, label: 'Lamp'),
//               ],
//             ),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.8,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                 ),
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   return ItemCard(item: items[index]);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FilterButton extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   FilterButton({required this.icon, required this.label});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         IconButton(
//           icon: Icon(icon),
//           onPressed: () {},
//         ),
//         Text(label),
//       ],
//     );
//   }
// }

// class ItemCard extends StatelessWidget {
//   final Map<String, dynamic> item;

//   ItemCard({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     final favoriteProvider = Provider.of<FavoriteProvider>(context);
//     return GestureDetector(
//       onTap: () {
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => (item: item),
//         //   ),
//         // );
//       },
//       child: Card(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Image.asset(item['image'], fit: BoxFit.cover),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(item['name'], style: TextStyle(fontSize: 18)),
//                   SizedBox(height: 8),
//                   Row(
//                     children: item['colors'].map<Widget>((color) {
//                       return Container(
//                         width: 12,
//                         height: 12,
//                         margin: EdgeInsets.only(right: 4),
//                         decoration: BoxDecoration(
//                           color: color,
//                           shape: BoxShape.circle,
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                   SizedBox(height: 8),
//                   Text('¥${item['price']}'),
//                 ],
//               ),
//             ),
//             IconButton(
//               icon: Icon(
//                 favoriteProvider.isFavorite(item['name'])
//                     ? Icons.favorite
//                     : Icons.favorite_border,
//               ),
//               onPressed: () {
//                 favoriteProvider.toggleFavorite(item['name']);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
