import 'package:flutter/material.dart';
import 'package:lembrei/screens/register_screens.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/widgets/home/cards.dart';
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
              SizedBox(height: 10,),
              QuickSearch(),
              SizedBox(height: 10,),
              FiltersStatus(),
              SizedBox(height: 10,),
              Expanded(child: Cards()),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context) => RegisterScreens(),
              ),
            );
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