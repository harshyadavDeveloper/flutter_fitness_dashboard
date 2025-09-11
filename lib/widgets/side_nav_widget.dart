import 'package:fitness_dashboard/constant/constant.dart';
import 'package:fitness_dashboard/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideNavWidget extends StatefulWidget {
  const SideNavWidget({super.key});

  @override
  State<SideNavWidget> createState() => _SideNavWidgetState();
}

class _SideNavWidgetState extends State<SideNavWidget> {
  int selectedIndex = 0;
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
    bool isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        color: isSelected ? selectionColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
