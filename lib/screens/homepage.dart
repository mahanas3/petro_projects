import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../getx/api_controller.dart';
import '../utilities/color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    controller.getData();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Documents'),
          leading: Icon(
            Icons.file_copy,
            color: Colors.indigo[900],
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img_1.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GetBuilder<ApiController>(
              builder: (blt) {
                print(blt.datas![0].item);
                return ListView.builder(
                    itemCount: blt.datas!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          color: HexColor(blt.datas![index].colour!)
                              .withOpacity(.1),
                          child: ListTile(
                            title: Text(
                              blt.datas![index].screenTitle!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(blt.datas![index].item!),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text('count: ${blt.datas![index].count!}'),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'screen code: ${blt.datas![index].screenCode!}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ));
                    });
              },
            ),
          ),
        ));
  }
}
