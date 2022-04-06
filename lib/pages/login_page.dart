import 'package:flutter/material.dart';
import '../widgets/molecules/app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
