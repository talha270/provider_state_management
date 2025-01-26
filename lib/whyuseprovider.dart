import 'dart:async';

import 'package:flutter/material.dart';

class Whyuseprovider extends StatefulWidget {
  const Whyuseprovider({super.key});

  @override
  State<Whyuseprovider> createState() => _WhyuseproviderState();
}

class _WhyuseproviderState extends State<Whyuseprovider> {
  int count=0;
  @override
  void initState() {
    super.initState();
    // Timer.periodic(const Duration(seconds: 1), (timer){
    //   count++;
    //   setState(() {
    //
    //   });
    // },);
  }
  @override
  Widget build(BuildContext context) {
    print("build $count");
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}:${DateTime.now().second.toString()}",style: const TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
              Text(count.toString(),style: const TextStyle(color: Colors.red,fontSize: 40,fontWeight: FontWeight.bold),),
            ],
          )),
    );
  }
}

