import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TransparentAppBarView();
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class TransparentAppBarView extends StatelessWidget {
  const TransparentAppBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
      ),
    );
  }
}
