import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    final controller=Provider.of<Counterprovider>(context,listen: false);
    print("build");
    return Scaffold(
      body: Consumer2<Counterprovider,ExampleOneProvider>(builder: (context, value, value2, child) {
        return  Center(child: Text(value.count.toString(),style: TextStyle(fontSize: 50,color: Colors.red),),);
      },),
      floatingActionButton: FloatingActionButton(onPressed: () {
      controller.setcount();

      },child: const Icon(Icons.add),),
    );
  }
}

