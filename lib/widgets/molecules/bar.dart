import 'package:flutter/material.dart';

import '../../pages/login_page.dart';
import '../../pages/routes.dart';

class BarComponent extends StatelessWidget {
  const BarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BarView();
  }
}

class BarView extends StatelessWidget {
  const BarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push<void>(createSlideRoute(const LoginPage()));
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: const Color(0xffFFD000),
              minimumSize: const Size(170, 60),
            ),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push<void>(createSlideRoute(const LoginPage()));
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: const Color(0xffffffff),
              minimumSize: const Size(170, 60),
            ),
            child: const Text(
              'Cadastre-se',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
