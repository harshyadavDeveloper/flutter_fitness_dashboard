import 'package:fitness_dashboard/data/health_details_data.dart';
import 'package:fitness_dashboard/widgets/card_view.dart';
import 'package:flutter/material.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetailsData();
    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12.0),
      itemBuilder: (context, index) => CardView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(healthDetails.healthData[index].icon,
              width: 30, height: 30),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 4),
            child: Text(healthDetails.healthData[index].value,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            healthDetails.healthData[index].title,
            style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.normal),
          )
        ],
      )),
    );
  }
}
