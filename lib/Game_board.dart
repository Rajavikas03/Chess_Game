import 'package:chess_game_flutter/Components/Square.dart';
import 'package:chess_game_flutter/Components/piece.dart';
import 'package:chess_game_flutter/Hepler/Helper_method.dart';
import 'package:flutter/material.dart';

class Game_Borard extends StatefulWidget {
  const Game_Borard({super.key});

  @override
  State<Game_Borard> createState() => _Game_BorardState();
}

class _Game_BorardState extends State<Game_Borard> {
  // create my piece
  ChessPieces myPawn = ChessPieces(
      type: Chess_piece_type.pawn,
      imagepath:
          "/Users/rajavikas/My_space/chess_game_flutter/lib/images_chess/Pawn.png",
      isWhite: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 8 * 8,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8),
          itemBuilder: (context, index) {
            return Square(
              isWhite: isWhite(
                index,
              ),
              pieces: myPawn,
            );
          }),
    );
  }
}
