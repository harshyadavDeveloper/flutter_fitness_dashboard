import 'package:fitness_dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideNavWidget extends StatefulWidget {
  const SideNavWidget({super.key});

  @override
  State<SideNavWidget> createState() => _SideNavWidgetState();
}

class _SideNavWidgetState extends State<SideNavWidget> {
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) => _buildMenuEntry(data, index)),
    );
  }

  Widget _buildMenuEntry(SideMenuData data, int index) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
          child: Icon(
            data.menu[index].icon,
            color: Colors.grey,
          ),
        ),
        Text(
          data.menu[index].title,
          style: const TextStyle(
              fontSize: 16, color: Colors.grey, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
