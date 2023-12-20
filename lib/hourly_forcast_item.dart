import 'package:flutter/material.dart';

class HourlyForcastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temprature;
  const HourlyForcastItem(
      {super.key,
      required this.time,
      required this.icon,
      required this.temprature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              time,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              temprature,
            ),
          ],
        ),
      ),
    );
  }
}
