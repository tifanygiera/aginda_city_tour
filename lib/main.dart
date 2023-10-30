import 'package:flutter/material.dart';
import 'package:aginda_city_tour/models/Tour.dart';
import 'package:aginda_city_tour/data/tour_data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.blue),
        useMaterial3: true,
      ),
      home: HomeScreen(tour:CityTour),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.CityTour});


  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: CityTour(widget.CityTour)
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox (height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageUrls: ['https://picsum.photos/id/162/300/200',
                  'https://picsum.photos/id/164/300/200',
                   'https://picsum.photos/id/174/300/200',

                  ]
                ],

              )
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
