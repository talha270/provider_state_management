import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/counter_provider.dart';

class Counterexample extends StatefulWidget {
  const Counterexample({super.key});

  @override
  State<Counterexample> createState() => _CounterexampleState();
}

class _CounterexampleState extends State<Counterexample> {
  @override
  void initState() {
    super.initState();
    final countprovider=Provider.of<Counterprovider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 1), (timer){
      countprovider.setcount();
    });
  }
  @override
  Widget build(BuildContext context) {
    // first method to use the provider class
    final countprovider=Provider.of<Counterprovider>(context,listen: false);
    print("build");
    // consumer is second method to use the provider class in which by default listen is false
    // listen means page is rebuild or  not
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
        elevation: 30,
        centerTitle: true,
      ),
      body: Consumer<Counterprovider>(
        builder:(context, value, child) {
          // print("body is rebuild");
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}:${DateTime.now().second.toString()}",style: const TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
                Text(value.count.toString(),style: const TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
              ],
            ),
          );
        } ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.setcount();
        // value.setcount();
      },
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),),
    );

  }
}

