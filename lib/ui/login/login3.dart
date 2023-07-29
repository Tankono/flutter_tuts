import 'package:flutter/material.dart';
import 'package:flutter_tuts/ui/app_widgets.dart';

class Login3 extends StatefulWidget {
  const Login3({
    Key? key,
  }) : super(key: key);

  @override
  State<Login3> createState() => _LoginState();
}

class _LoginState extends State<Login3> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 60),
              TFUserName(),
              const SizedBox(height: 10),
              const TFPassword(),
              const SizedBox(height: 60),
              BTLogin(
                formKey: _formKey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      _formKey.currentState?.reset();
                    },
                    child: const Text("Signup"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _focusNodePassword.dispose();
    // _controllerUsername.dispose();
    // _controllerPassword.dispose();
    super.dispose();
  }
}
