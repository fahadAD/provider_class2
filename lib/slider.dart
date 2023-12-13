import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class2/provider.dart';
class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
Provider.of<AllSliders>(context,listen: false);

ValueNotifier <bool> show=ValueNotifier<bool>(true);

print("build");
    return Consumer<AllSliders>(builder: (context, value, child) {
      return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              min: 0,
              max: 1,
              value:value.v_alue, onChanged: (val) {
                  value.setValue(val);
            },),

            Row(children: [
              Expanded(
                child: Container(
                  height: 70,
                  color: Colors.orange.withOpacity(value.v_alue),
                  child: Text("hgggggg"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 70,
                  color: Colors.blue.withOpacity(value.v_alue),
                  child: Text("tuuuuuuuu"),
                ),
              ),
            ],),

            SizedBox(height: 20,),
            ValueListenableBuilder(valueListenable: show, builder: (context, value, child) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: TextFormField(
                  obscureText: show.value,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          show.value=!show.value;
                        },
                        child: Icon(show.value?Icons.visibility_off_sharp:Icons.visibility_rounded)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "pass word",),

                ),
              );
            },)
          ],
        ),
      );
    },);
  }
}
