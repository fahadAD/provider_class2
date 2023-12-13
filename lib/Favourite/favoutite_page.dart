import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class2/provider.dart';

import 'all_fav_list.dart';
class FavoutitePage extends StatelessWidget {
  const FavoutitePage({super.key});

   @override
  Widget build(BuildContext context) {
    print("bild");
    return Consumer<AllFavouriteItems>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Fav page"),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward),
               onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AllFavLists(),));
              },
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                if(value.selecteditem.contains(index)){
                  value.removeValue(index);
                }else{
                  value.addValue(index);
                }

              },
              title: Text("Item="+index.toString()),
              trailing: value.selecteditem.contains(index)?Icon(Icons.favorite):Icon(Icons.favorite_border),

            );
          },

        ),
      );
    },);
  }
}
