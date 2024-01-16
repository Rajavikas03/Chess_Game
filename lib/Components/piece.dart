enum Chess_piece_type { pawn, rook, knight, bishop, queen, king }

class ChessPieces {
  final Chess_piece_type type;
  final bool isWhite;
  final String imagepath;

  ChessPieces(
      {required this.type, required this.imagepath, required this.isWhite});
}
