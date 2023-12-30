import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/screens/create_room_screen.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/main-menu";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Responsive(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(CreateRoomScreen.routeName);
                  },
                  text: "Create Room"),
              Gap(20),
              CustomButton(onTap: () {
                    Navigator.of(context).pushNamed(JoinRoomScreen.routeName);

              }, text: "Join Room"),
            ],
          ),
        ),
      ),
    );
  }
}
