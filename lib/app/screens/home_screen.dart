import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  late bool _buttonEnabled = false;

  
  void _changeEmail(value) {
    print(value);

    setState(() {
      _buttonEnabled = EmailValidator.validate(value);
    });
  }

  void _nextStep() {
    print("botão ativado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: _changeEmail,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  labelText: "E-mail", labelStyle: TextStyle(fontSize: 30.0)),
            ),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: _buttonEnabled ? _nextStep : null,
              textColor: Colors.white,
              color: Colors.blue,
              disabledColor: Colors.grey,
              child: const Text(
                'Continuar',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
