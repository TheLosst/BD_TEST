import 'package:bd_project/Pages/LoginPage.dart';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  RegPage({Key? key, required this.title}) : super(key: key);
  final TextEditingController loginField = TextEditingController();
  final TextEditingController emailFiled = TextEditingController();
  final TextEditingController passField = TextEditingController();
  final TextEditingController rePassField = TextEditingController();
  final String title;

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 500,
                height: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black38),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    controller: widget.emailFiled,
                    decoration: const InputDecoration(
                        hintText: "Введите адрес почтового ящика"),
                    textAlign: TextAlign.center,
                    maxLength: 45,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 500,
                height: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black38),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    controller: widget.loginField,
                    maxLength: 20,
                    decoration:
                        const InputDecoration(hintText: "Введите логин"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 500,
                height: 70,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black38),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    controller: widget.passField,
                    maxLength: 20,
                    decoration:
                        const InputDecoration(hintText: "Введите пароль"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 70,
                width: 500,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black38),
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    controller: widget.rePassField,
                    textAlign: TextAlign.center,
                    maxLength: 20,
                    decoration: const InputDecoration(
                        hintText: "Повторите введенный пароль"),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    //TODO: Обращение к бд и проверка введенной информации вывод инфы об ошибке или успехе
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginPage(title: widget.title)),
                        (Route<dynamic> route) => false);
                  },
                  child: const Text("Создать аккаунт"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
