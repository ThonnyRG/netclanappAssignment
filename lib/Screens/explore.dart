import 'package:flutter/material.dart';
import 'package:netclanapp/widgets/ContentScreen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120), // Adjust the height
          child: AppBar(
            backgroundColor: Colors.blue.shade900,
            leadingWidth: 60,
            leading: const Icon(
              Icons.menu_sharp,
              color: Colors.white,
              size: 40,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy User.name!!',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      size: 18,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "User.location",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
actions: [
  Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.checklist_rtl_rounded),
            color: Colors.white,
            iconSize: 40,
            onPressed: () {
              // Action
            },
          ),
        ],
      ),
    ),
  ),
],


            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'PERSONAL'),
                Tab(text: 'SERVICES'),
                Tab(text: 'BUSINESSES'),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      hintStyle: MaterialStatePropertyAll(
                        TextStyle(color: Colors.blue.shade900),
                      ),
                      leading: Icon(
                        Icons.search_outlined,
                        color: Colors.blue.shade900,
                      ),
                      constraints: const BoxConstraints(maxHeight: 65),
                      hintText: 'Search...',
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.tune_rounded, color: Colors.blue.shade900),
                    onPressed: () {
                      // Action for the tune icon
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: const TabBarView(
                children: [
                  ContentScreen(), // Reused widget for the three tabs
                  ContentScreen(),
                  ContentScreen(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue.shade900,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Connections',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label: 'Groups',
            ),
          ],
        ),
      ),
    );
  }
}
