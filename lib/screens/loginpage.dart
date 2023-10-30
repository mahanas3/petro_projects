import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_textfield.dart';
import '../getx/api_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final controller = Get.put(ApiController());
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/img.png',
                ),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'SignIn',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                    fontFamily: 'PlayFair'),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: userNameController,
                text: 'user name',
                icon: Icons.account_box,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                controller: passwordController,
                text: 'password',
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton(
                  onPressed: () async {
                    await controller.loginUser(
                        userNameController.text, passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
