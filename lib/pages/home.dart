import 'package:flutter/material.dart';
import '../widgets/molecules/bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF800000),
      body: LayoutBuilder(
        builder: (context, constraints) => ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(),
              Column(
                children: const [
                  Text(
                    'PraJá',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFD000),
                    ),
                  ),
                  Text(
                    'Delivery de bebidas',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffFFFFFF),
                    ),
                  )
                ],
              ),
              const BarComponent(),
            ],
          ),
        ),
      ),
    );
  }
}
