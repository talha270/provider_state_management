import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favouriteprovider.dart';

class Favouritepage extends StatelessWidget {
  const Favouritepage({super.key});

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
                itemCount: value.favourites.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(value.favourites[index]),
                    trailing: IconButton(onPressed:(){
                      value.add_in_list(value.favourites[index]);
                    },
                        icon:value.favourites.contains(value.favourites[index])?const Icon(Icons.favorite):const Icon(Icons.favorite_border)),
                  );
                },),
            )
          ],
        );
      },),
    );
  }
}

