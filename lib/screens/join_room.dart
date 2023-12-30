import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = "/join-room";

  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _gameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  )
                ], text: "Join Room", fontSize: 70),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomTextField(
                    controller: _nameController, hintText: "Enter player name",),
                SizedBox(
                  height:  20.0,
                ),
                CustomTextField(
                    controller: _gameController, hintText: "Enter Game ID"),
                SizedBox(
                  height: size.height * 0.05,
                ),
                CustomButton(onTap: () {}, text: "Join")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
