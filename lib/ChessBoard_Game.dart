import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "CHESS GAME",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.orange,
          boardOrientation: PlayerColor.white,
          size: MediaQuery.sizeOf(context).width * 0.95,
          onMove: () {
            //
          },
          arrows: [
            BoardArrow(from: "b2", to: "b4", color: Colors.red.withOpacity(0.6))
          ],
        ),
      ),
    );
  }
}
