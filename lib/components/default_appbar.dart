import 'package:flutter/material.dart';
import 'package:medguide/theme.dart';
import 'package:provider/provider.dart';
import 'package:ionicons/ionicons.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
      backgroundColor: Theme.of(context).colorScheme.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      title: Text(
        "MedGuide",
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Ionicons.contrast_outline),
          onPressed: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
          },
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        IconButton(
          icon: const Icon(Ionicons.person),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/register', (route) => false);
          },
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
