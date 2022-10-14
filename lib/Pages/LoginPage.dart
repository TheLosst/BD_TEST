import 'package:bd_project/Pages/RegPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  final TextEditingController loginField = TextEditingController();
  final TextEditingController passwordField = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 70,
                width: 500,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black38),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    controller: widget.loginField,
                    maxLength: 20,
                    decoration: const InputDecoration(hintText: "Введите логин"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 70,
                width: 500,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black38),
                        borderRadius: const BorderRadius.all(Radius.circular(5))),
                    child: TextFormField(
                      controller: widget.passwordField,
                      maxLength: 20,
                      decoration:
                          const InputDecoration(hintText: "Введите пароль"),
                      textAlign: TextAlign.center,
                    )),
              ),
              const SizedBox(height: 50),
              SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Войти"))),
              const SizedBox(height: 50),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegPage(title: widget.title)),
                        (Route<dynamic> route) => true);
                  },
                  child: const Text("Нет аккаунта?"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
