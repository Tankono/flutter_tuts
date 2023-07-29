import 'package:flutter/material.dart';

class AppWidgets {
  static const double roundRadius = 10;

  static OutlineInputBorder roundBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppWidgets.roundRadius),
    );
  }

  static OutlineInputBorder roundBorder30() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );
  }
}

class TV extends StatelessWidget {
  final String title;

  const TV({super.key, required this.title});
  TV.small({super.key, required this.title}) {}

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: TextStyle(color: const Color.fromARGB(255, 33, 20, 20)),
    );
  }
}

class TF extends StatelessWidget {
  String? title;
  TF({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: _controllerUsername,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "$title",
        prefixIcon: const Icon(Icons.person_outline),
        hintText: "Please input $title",
        hintStyle: const TextStyle(color: Colors.grey),
        border: AppWidgets.roundBorder(),
        enabledBorder: AppWidgets.roundBorder(),
      ),
      // onEditingComplete: () => _focusNodePassword.requestFocus(),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter username.";
        }
        return null;
      },
    );
  }
}

class TFUserName extends StatelessWidget {
  const TFUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: _controllerUsername,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Username",
        prefixIcon: const Icon(Icons.person_outline),
        border: AppWidgets.roundBorder(),
        enabledBorder: AppWidgets.roundBorder(),
      ),
      // onEditingComplete: () => _focusNodePassword.requestFocus(),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter username.";
        }
        return null;
      },
    );
  }
}

class TFPassword extends StatefulWidget {
  const TFPassword({super.key});

  @override
  State<StatefulWidget> createState() => _TFPassword();
}

class _TFPassword extends State<TFPassword> {
  bool _obscurePassword = true;
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controllerPassword,
      // focusNode: _focusNodePassword,
      obscureText: _obscurePassword,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: const Icon(Icons.password_outlined),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
            icon: _obscurePassword
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined)),
        border: AppWidgets.roundBorder(),
        enabledBorder: AppWidgets.roundBorder(),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter password.";
        }
        return null;
      },
    );
  }
}

class BT extends StatelessWidget {
  String? title;
  BT({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        // if (_formKey.currentState?.validate() ?? false) {
        //   _boxLogin.put("loginStatus", true);
        //   _boxLogin.put("userName", _controllerUsername.text);

        //   Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return Home();
        //       },
        //     ),
        //   );
        // }
      },
      child: Text("$title"),
    );
  }
}

class BTLogin extends StatelessWidget {
  String? title;
  final GlobalKey<FormState> formKey;

  BTLogin({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        if (formKey.currentState?.validate() ?? false) {
          // _boxLogin.put("loginStatus", true);
          // _boxLogin.put("userName", _controllerUsername.text);

          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return Home();
          //     },
          //   ),
          // );
        }
      },
      child: const Text("Login"),
    );
  }
}

class AB extends StatelessWidget {
  const AB({super.key});

  @override
  Widget build(context) {
    return AppBar(
      title: Text("Input Tutorials"),
    );
  }
}

class BaseForm extends StatelessWidget {
  @override
  Widget build(context) {
    return Form(child: Text(""));
  }
}
