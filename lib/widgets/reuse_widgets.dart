import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reuse_widgets extends StatefulWidget {
  const reuse_widgets({super.key});

  @override
  State<reuse_widgets> createState() => _reuse_widgets();
}

class _reuse_widgets extends State<reuse_widgets> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}



Container BottomNavigationBar () {
  return Container(
  );
}