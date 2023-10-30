import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petro_projects/getx/api_controller.dart';
import '../model/class_audit.dart';

class AuditPage extends StatelessWidget {
  AuditPage({Key? key}) : super(key: key);

  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder(
          future: controller.getAuditGraph(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              List<Audit> data = snapshot.data!;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]
                        .screenTitle!), // Replace someProperty with the actual property to display
                  );
                },
              );
            } else {
              return const Center(child: Text('No data available'));
            }
          },
        ),
      ),
    );
  }
}
