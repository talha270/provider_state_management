import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/theme_changer_provider.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer"),
        centerTitle: true,
        elevation: 20,
      ),
      body: Consumer<ThemeChangerProvider>(
        builder: (context, providervalue, child) {
          return Column(
            children: [
              RadioListTile<ThemeMode>(
                  title: const Text("Light Theme"),
                  value: ThemeMode.light,
                  groupValue: providervalue.thememode,
                  onChanged: (newvalue)=>providervalue.changetheme(newvalue!)),
              RadioListTile<ThemeMode>(
                  title: const Text("Dark Theme"),
                  value: ThemeMode.dark,
                  groupValue: providervalue.thememode,
                  onChanged: (newvalue)=>providervalue.changetheme(newvalue!)),
              RadioListTile<ThemeMode>(
                  title: const Text("System Theme"),
                  value: ThemeMode.system,
                  groupValue: providervalue.thememode,
                  onChanged: (newvalue)=>providervalue.changetheme(newvalue!))
            ],
          );
        },
      ),
    );
  }
}

