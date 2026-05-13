import 'package:flutter/material.dart';
import 'package:lembrei/screens/register_screens.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/widgets/home/cards.dart';
import 'package:lembrei/widgets/home/filters_status.dart';
import 'package:lembrei/widgets/home/home_header.dart';
import 'package:lembrei/widgets/home/quick_search.dart';
import 'package:lembrei/models/lembrete.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  final List<Lembrete> lembretes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(),
              SizedBox(height: 10),
              QuickSearch(),
              SizedBox(height: 10),
              FiltersStatus(),
              SizedBox(height: 10),
              Expanded(child: Cards(lembretes: lembretes)),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () async {
            final novolembrete = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreens()),
            );

            if (novolembrete != null) {
              setState(() {
                lembretes.add(novolembrete);
              });
            }
          },
          backgroundColor: AppColors.principal,
          elevation: 6,
          shape: CircleBorder(),
          child: Icon(Icons.add, color: Colors.white, size: 32),
        ),
      ),
    );
  }
}
