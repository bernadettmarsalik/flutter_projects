import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //öröklődés

// konstruktor:
// egyik módszer:
// GradientContainer() {
//   // inicializáció
//   // add comment for other developers
// }

// más módszer:
// GradientContainer({key}) : super(key: key);  //super a szülő konstruktorát hivja meg

// egyszerüsitve:
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    //widgetet fog visszaadni visszatérési értékként
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: startAlignment,
                end: endAlignment)),
        child: const Center(child: DiceRoller()));
  }
}



// Másik megközelítés:
// class GradientContainer extends StatelessWidget {
//   //öröklődés

// // konstruktor:
// // egyik módszer:
// // GradientContainer() {
// //   // inicializáció
// //   // add comment for other developers
// // }

// // más módszer:
// // GradientContainer({key}) : super(key: key);  //super a szülő konstruktorát hivja meg

// // egyszerüsitve:
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     //widgetet fog visszaadni visszatérési értékként
//     return Container(
//         decoration:  BoxDecoration(
//             gradient: LinearGradient(
//                 colors: colors;
//                 begin: startAlignment,
//                 end: endAlignment)),
//         child: const Center(child: StyledText("Hello World 2!")));
//   }
// }
