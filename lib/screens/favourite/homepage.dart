import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favouriteprovider.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
      ),
      body: Consumer<Favouriteprovider>(builder: (context, value, child) {
        print("build in consumer");
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                // shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("item $index"),
                    trailing: IconButton(onPressed:(){
                      value.add_in_list("item $index");
                    },
                        icon:value.favourites.contains("item $index")?const Icon(Icons.favorite):const Icon(Icons.favorite_border)),
                  );
                },),
            )
          ],
        );
      },),
    );
  }
}

