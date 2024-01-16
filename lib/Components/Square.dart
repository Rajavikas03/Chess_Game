import 'package:chess_game_flutter/Components/piece.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPieces? pieces;
  const Square({super.key, required this.isWhite, required this.pieces});

  @override
  Widget build(BuildContext context) {
    // var isWhite;
    return Container(
      color: isWhite ? Colors.grey[200] : Colors.grey[500],
      child: pieces != null
          ?
          // Image(
          //     image: AssetImage(pieces!.imagepath),
          //     fit: BoxFit.cover,
          //   )
          Image.asset(
              "lib/images_chess/Pawn.png",
              width: 50.0,
              height: 50.0,
              fit: BoxFit.contain,
              // '/Users/rajavikas/My_space/chess_game_flutter/lib/images_chess/Pawn.png',
              // "lib/images_chess/Pawn.png",
              // pieces!.imagepath,
              // scale: 1.0,
              // width: 100,
              // height: 100,
            )
          : null,
    );
  }
}
