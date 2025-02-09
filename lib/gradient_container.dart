import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
import 'package:roll_dice_app/styled_text.dart';

//Alignment? startAlignment;

// For this case, you can put const below in front of color gradient array
// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //if we have var methods in a class then it will no longer be a const class and hence we have to remove const keyword from constructors.
  const GradientContainer(
      {super.key, required this.color1, required this.color2});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  //This thing didn't worked out -> const GradientContainer(this.color1, this.color2,{super.key});
  final Color color1;
  final Color color2;

  void rollDice() {}

  @override
  Widget build(context) {
    //startAlignment = Alignment.topLeft;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          //colors: [Colors.deepPurple, Colors.purple],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
          child: DiceRoller(),
          // child: StyledText('Jitesh the Great!!'),
          ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key,required this.colors});
//
//   final List<Color> colors;
//
//   @override
//   Widget build(context) {
//     //startAlignment = Alignment.topLeft;
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           //colors: [Colors.deepPurple, Colors.purple],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child:  Center(
//         child: StyledText('Jitesh the Great!!'),
//       ),
//     );
//   }
// }
