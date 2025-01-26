import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/favouriteprovider.dart';
import 'package:provider_state_management/screens/favourite/favouritepage.dart';
import 'package:provider_state_management/screens/favourite/homepage.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  int selectedindex=0;
  PageController pageController=PageController();
  onchange(int value){
  setState(() {
    selectedindex=value;
  });
  pageController.jumpToPage(selectedindex);
  }
  @override
  Widget build(BuildContext context) {
        print("build");
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Favourite things"),
      //   centerTitle: true,
      //   elevation: 20,
      // ),
      body:PageView(
        controller: pageController,
        onPageChanged: (value)=>onchange(value),
        children: const [
          Homepage(),
          Favouritepage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.white10,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: selectedindex,
        onTap: (value)=>onchange(value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite"),
        ],
      ),
    );
  }
}

