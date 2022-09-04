import 'package:flutter/material.dart';
import 'package:simplepart_playstore/games/list.dart';
import 'applications/list.dart';
import 'books/list.dart';
import 'offers/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    GameList(),
    AppList(),
    OfferList(),
    BookList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.local_convenience_store_outlined),
              label: "Games"),
          NavigationDestination(
              icon: Icon(Icons.grid_view_outlined),
              label: "Apps"),
          NavigationDestination(
              icon: Icon(Icons.local_offer_outlined),
              label: "Offer"),
          NavigationDestination(
              icon: Icon(Icons.book_outlined),
              label: "Books"),
        ],
        onDestinationSelected: (int index){
          setState((){
            currentPage=index;
          });
        },
      ),
    );
  }
}
