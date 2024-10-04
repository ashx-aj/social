import 'package:flutter/material.dart';
import 'package:movie/screen.dart';

class bottombar extends StatefulWidget {
  bottombar({
    Key? key,
  });

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottombaricons(context, Icons.home, HomeScreen()),
            _bottombaricons(context, Icons.search, HomeScreen()),
            _bottombaricons(context, Icons.add_circle, HomeScreen()),
            _bottombaricons(context, Icons.message, HomeScreen()),
            _bottombaricons(context, Icons.person, HomeScreen()),
          ],
        ),
      ),
    );
  }
}

IconButton _bottombaricons(BuildContext context, IconData ic, Widget wd) {
  return IconButton(
      onPressed: () {
        Navigator.popAndPushNamed(
            context, MaterialPageRoute(builder: (context) => wd) as String);
      },
      icon: Icon(
        ic,
        color: Colors.white,
      ));
}
