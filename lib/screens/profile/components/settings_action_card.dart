import 'package:flutter/material.dart';
import 'package:social_hub/screens/profile/components/components.dart';
import 'package:social_hub/ui/ui.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard(
      {super.key,
      required this.title,
      this.onTap,
      required this.suffixIcon,
      required this.iconColor,
      required this.leadingIcon});

  final String title;
  final VoidCallback? onTap;
  final IconData suffixIcon;
  final Color iconColor;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BaseContainer(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconContainer(
                  icon: leadingIcon,
                  color: iconColor,
                  iconColor: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(suffixIcon, color: theme.hintColor.withOpacity(0.3), size: 16),
            )
          ],
        ),
      ),
    );
  }
}
