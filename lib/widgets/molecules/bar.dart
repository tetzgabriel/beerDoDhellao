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
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push<void>(createSlideRoute(const LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Colors.white,
                minimumSize: const Size(170, 60),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push<void>(createSlideRoute(const LoginPage()));
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: Colors.black,
              minimumSize: const Size(170, 60),
            ),
            child: const Text(
              'CADASTRAR',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
