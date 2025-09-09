import 'package:fitness_dashboard/widgets/side_nav_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                child: SideNavWidget(),
              )),
          Expanded(flex: 7, child: Container(color: Colors.blue)),
          Expanded(
            flex: 3,
            child: Container(color: Colors.green),
          )
        ],
      )),
    );
  }
}
