import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final onTap;
  final String text;
  const MyButton({Key? key, this.text = 'Click Me', required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(187, 224, 255, 1),
                offset: Offset(0, 4),
                blurRadius: 15)
          ],
          color: const Color.fromRGBO(187, 222, 251, 1),
        ),
        width: 124,
          height: 51,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        )),
      ),
    );
  }
}

      // Figma Flutter Generator Rectangle1Widget - RECTANGLE
//       import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';

// class MyButton extends StatelessWidget {
//   final onTap;
//    MyButton({Key? key, this.onTap}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//           width: 124,
//           height: 51,
//           decoration: BoxDecoration(
//             borderRadius : BorderRadius.only(
//               topLeft: Radius.circular(9),
//               topRight: Radius.circular(9),
//               bottomLeft: Radius.circular(9),
//               bottomRight: Radius.circular(9),
//             ),
//         // ignore: prefer_const_literals_to_create_immutables
//         boxShadow : [BoxShadow(
//             color: Color.fromRGBO(187, 224, 255, 1),
//             offset: Offset(0,4),
//             blurRadius: 15
//         )],
//         color : Color.fromRGBO(187, 222, 251, 1),
//   )
//         ),
//     );
//   }
//   }

      