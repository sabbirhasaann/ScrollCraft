import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tile = [
    'Tile 1',
    'Tile 2',
    'Tile 3',
    'Tile 4',
    'Tile 5',
    'Tile 6',
    'Tile 7',
    'Tile 8',
    'Tile 9',
    'Tile 10',
    'Tile 11',
    'Tile 12',
    'Tile 13',
    'Tile 14',
    'Tile 15',
    'Tile 16',
    'Tile 17',
    'Tile 18',
    'Tile 19',
    'Tile 20',
    'Tile 21',
    'Tile 22',
    'Tile 23',
    'Tile 24',
    'Tile 25',
    'Tile 26',
    'Tile 27',
    'Tile 28',
    'Tile 29',
    'Tile 30',
  ];

  late final ScrollController controller;
  int count = 0;

  @override
  void initState() {
    super.initState();

    controller = ScrollController();

    controller.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = controller.position.pixels;
    final viewport = controller.position.viewportDimension;

    debugPrint('Current offset: $offset');
    debugPrint('View port dimension: $viewport');
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: controller,
        itemCount: tile.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: Card(
              child: ListTile(
                title: Text(
                  tile[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
