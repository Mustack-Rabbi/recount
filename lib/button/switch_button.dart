import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SwitchButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isOn;
  const SwitchButton({super.key, required this.onTap, required this.isOn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color(0xFFBB15F6),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
              duration: const Duration(milliseconds: 200),
              child: Container(
                width: 65,
                height: 30,
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  // shape: BoxShape.circle,
                ),
                child: Center(
                    child: isOn
                        ? const Text(
                            "Goal",
                            style: TextStyle(
                                color: Color(0xFFBB15F6),
                                fontWeight: FontWeight.w700),
                          )
                        : const Text(
                            "Number",
                            style: TextStyle(
                                color: Color(0xFFBB15F6),
                                fontWeight: FontWeight.w700),
                          )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



//===============

// {GestureDetector(
//           onTap: () {
//             setState(() {
//               isOn = !isOn;
//             });
//           },
//           child: Container(
//             width: 100,
//             height: 50,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(25),
//               color: isOn ? Colors.green : Colors.grey,
//             ),
//             child: Stack(
//               children: [
//                 AnimatedAlign(
//                   alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
//                   duration: Duration(milliseconds: 200),
//                   child: Container(
//                     width: 40,
//                     height: 40,
//                     margin: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Center(
//                       child: Text(
//                         isOn ? 'ON' : 'OFF',
//                         style: TextStyle(
//                           color: isOn ? Colors.green : Colors.grey,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )