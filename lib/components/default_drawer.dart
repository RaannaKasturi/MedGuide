import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      elevation: 10,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/img/man.jpg'),
                ),
                const SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.primaryFixedDim,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'MedGuide\n',
                      style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onPrimaryFixedVariant,
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.fontSize,
                        fontFamily: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.fontFamily,
                      ),
                      children: [
                        TextSpan(
                          text: 'One-stop for all healthcare needs',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryFixedVariant,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Divider(
                  endIndent: 150,
                  color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
                ),
                const SizedBox(height: 40),
                Center(
                  child: Column(
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Developed with ❤️ by ',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryFixedVariant,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Nayan Kasturi',
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryFixedVariant,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    EasyLauncher.url(
                                        url: 'https://nayankasturi.eu.org',
                                        mode: Mode.externalApp);
                                  },
                              ),
                            ],
                          )),
                      Text(
                        'Version 1.0.0',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium?.fontSize,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
