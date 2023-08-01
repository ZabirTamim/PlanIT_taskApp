
import 'package:flutter/material.dart';
import 'package:ui_assignment_one/Screens/task_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 89.0, right: 89.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * .3,
            ),
            const Text(
              "Welcome to",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
              ),
            ),
            const Text(
              "Plan IT",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: size.height * .3,
            ),
            const Text(
              "Your Personal task management and planning solution",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskScreen(),),);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff393939)),
                  ),
                  child: const Text(
                      "Let’s get started",
                  ),
                ),
            ),
            SizedBox(
              height: size.height * .1,
            ),
          ],
        ),
      ),
    );
  }
}
