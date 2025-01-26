import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';
import 'package:provider_state_management/provider/favouriteprovider.dart';
import 'package:provider_state_management/provider/theme_changer_provider.dart';
import 'package:provider_state_management/screens/counterexample.dart';
import 'package:provider_state_management/screens/example_one_screen.dart';
import 'package:provider_state_management/screens/favourite/favourite_screen.dart';
import 'package:provider_state_management/screens/testforshanif/counter_app.dart';
import 'package:provider_state_management/screens/theme_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => Counterprovider(),),
        ChangeNotifierProvider(create: (context) => ExampleOneProvider(),),
        ChangeNotifierProvider(create: (context) => Favouriteprovider(),),
        ChangeNotifierProvider(create: (context) => ThemeChangerProvider(),)
      ],

      child: Consumer<ThemeChangerProvider>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: value.thememode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark
            ),
            home: CounterApp(),
          );
        },
      )
      );
    // ---this is singleprovider example----
    //   return ChangeNotifierProvider(create: (_)=>Counterprovider(),
    //     child: MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const ExampleOneScreen(),
    // ),
    // );
  }
}
