import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider.dart';
class AllFavLists extends StatelessWidget {
  const AllFavLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllFavouriteItems>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Fav List"),
        ),
        body: ListView.builder(
          itemCount: value.selecteditem.length,
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
