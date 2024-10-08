import 'package:flutter/material.dart';
import 'Result_screen.dart';
import 'Record_screen.dart';
import 'Advice_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Dashboard History'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Tips'),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RecordPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResultPage()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AdvicePage()),
              );
          };
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.camera),
            label: 'Record',
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Result',),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble),
            label: 'Advice',
          ),
        ],
      ),
    );
  }
}
