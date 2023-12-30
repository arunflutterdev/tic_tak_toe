import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/utils/colors.dart';
import 'homepage.dart';
import 'screens/create_room_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TicTacToe",
      theme: ThemeData.dark().copyWith(
          useMaterial3: true,
          scaffoldBackgroundColor: bgColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
