import 'package:flutter/material.dart';
import 'package:news_app/app_utls/app_colors.dart';
import 'package:news_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'drawer/drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(),
      body: Container(
        color: AppColors.blue,

      ),
    );
  }
}
