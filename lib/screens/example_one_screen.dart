import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  double value=1.0;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exampe One"),
        centerTitle: true,
      ),
      body:Consumer<ExampleOneProvider>(
        builder: (context, value, child){
          print("build Consumer");
          return  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                    min: 0,
                    max: 1,
                    value: value.value, onChanged: (newvalue){
                  value.setvalue(newvalue);
                }),
                Row(
                  children: [
                    Expanded(child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)
                      ),
                      child: const Center(child: Text("Container 1")),
                    )),
                    Expanded(child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)
                      ),
                      child: const Center(child: Text("Container 1")),
                    ))
                  ],
                )

              ],
            ),
          );
        }
      ),
    );
  }
}

