import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flappybird/game/flappy_bird.dart';

import 'beginning_overlay.dart';

//single player button, opens to a page
class SinglePlayer extends StatefulWidget {
  static String routeName= '/single-player';
  const SinglePlayer({super.key});

  @override
  State<SinglePlayer> createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  late final FlappyBirdGame game;

  @override
  void initState(){
    super.initState();
    game =FlappyBirdGame();
    // runApp(GameWidget(game: game)); this code was the problem lol
  }
  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game,
    initialActiveOverlays: const [CustomOverlay.id],
    overlayBuilderMap: {
      'Overlay': (context,_) => CustomOverlay(game: game)
    },
    );
  }
}

