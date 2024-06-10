import 'package:flutter/material.dart';
import 'package:swiggy_clone/order%20details%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swiggy Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
        appBarTheme: const AppBarTheme(
          color: Colors.white, // Set the app bar color
        ),
        scaffoldBackgroundColor:
            Colors.grey[200], // Set scaffold background color
        primaryColor: Colors.white, // Set primary color for widgets
      ),
      home: const MyHomePage(title: 'Search for Sweets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add GridView here
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Number of columns
                children: List.generate(
                  6, // Number of items in the grid
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to ProductDetailsScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailsScreen(),
                          ),
                        );
                      },
                      child: Card(
                        margin: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: const TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // Button below the grid
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to ProductDetailsScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetailsScreen(),
                        ),
                      );
                    },
                    child: const Text('Nav Button'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
