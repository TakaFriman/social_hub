import 'package:flutter/material.dart';
import 'package:social_hub/ui/ui.dart';

class ContainerSettingsCommon extends StatelessWidget {
  const ContainerSettingsCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseContainer(
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconContainer(
                      iconColor: Colors.white,
                      icon: Icons.notifications_active,
                      color: Colors.red,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Уведомления и звуки',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconContainer(
                      iconColor: Colors.white,
                      icon: Icons.lock,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Конфиденциальность',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconContainer(
                      iconColor: Colors.white,
                      icon: Icons.palette_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Оформление',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconContainer(
                      iconColor: Colors.white,
                      icon: Icons.language_outlined,
                      color: Colors.purple,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Язык',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ],
        ));
  }
}

class IconContainer extends StatelessWidget {
  const IconContainer({super.key, required this.iconColor, required this.icon, required this.color});
  final Color iconColor;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Icon(
          icon,
          size: 20,
          color: iconColor,
        ));
  }
}
