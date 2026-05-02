import 'package:flutter/material.dart';
import 'package:lembrei/widgets/home/filters_status.dart';
import 'package:lembrei/widgets/home/home_header.dart';
import 'package:lembrei/widgets/home/quick_search.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

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
              SizedBox(height: 20,),
              QuickSearch(),
              SizedBox(height: 20,),
              FiltersStatus(),
            ],
          ),
        ),
      ),
    );
  }
}