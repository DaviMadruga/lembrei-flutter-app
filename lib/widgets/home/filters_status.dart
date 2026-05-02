import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';

class FiltersStatus extends StatelessWidget {
  const FiltersStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.background,
            side: BorderSide(color: AppColors.principal)
          ),
          onPressed: () {},
          child: Text(
            "Todos",
            style: TextStyle(
              color: AppColors.principal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(width: 10),

        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.background,
              side: BorderSide(color: AppColors.principal)
            ),
            onPressed: () {},
            child: Text(
              "Pendentes",
              style: TextStyle(
                color: AppColors.principal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        SizedBox(width: 10),

        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.background,
              side: BorderSide(color: AppColors.principal)
            ),
            onPressed: () {},
            child: Text(
              "Concluídos",
              style: TextStyle(
                color: AppColors.principal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
