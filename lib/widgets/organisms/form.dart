import 'package:flutter/material.dart';

class LoginFormComponent extends StatefulWidget {
  const LoginFormComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginFormComponent> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginFormComponent> {
  final _formKey = GlobalKey<FormState>();

  Icon passwordIcon = const Icon(Icons.remove_red_eye_outlined);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 32, right: 24),
            child: inputField(
              hintText: 'e-mail',
              errorMessage: 'Por favor, digite seu e-mail',
              isPassword: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 32, right: 24),
            child: Stack(
              children: [
                SizedBox(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap: () {changeIcon(passwordIcon);},
                        child: passwordIcon,
                      ),
                    ),
                  ),
                ),
                inputField(
                  hintText: 'senha',
                  errorMessage: 'Por favor, digite sua senha',
                  isPassword: true,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {changeIcon(passwordIcon);},
            child: const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'esqueci a senha',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Entrando')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Colors.black,
                minimumSize: const Size(double.infinity, 60),
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField inputField({
    required String hintText,
    required String errorMessage,
    required bool isPassword,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: inputBorder(const Color(0xFF000000), 2),
        focusedBorder: inputBorder(const Color(0xFF000000), 3),
        errorBorder: inputBorder(const Color(0xFFF44336), 2),
        focusedErrorBorder: inputBorder(const Color(0xFFF44336), 3),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      obscureText: isPassword,
    );
  }

  OutlineInputBorder inputBorder(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }

  void changeIcon(Icon passwordIcon) {
    if (passwordIcon.icon == Icons.remove_red_eye_outlined) {
      this.passwordIcon = const Icon(Icons.remove_red_eye);
    } else {
      this.passwordIcon = const Icon(Icons.remove_red_eye_outlined);
    }

    setState(() {
    });
  }
}
