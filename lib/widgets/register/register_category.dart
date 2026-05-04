import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterCategory extends StatefulWidget {
  const RegisterCategory({super.key});

  @override
  State<RegisterCategory> createState() => _RegisterCategoryState();
}

class _RegisterCategoryState extends State<RegisterCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categoria", style: AppTextStyles.tituloMedio),

          SizedBox(height: 5),

          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Saúde",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Trabalho",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Estudos",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Pessoal",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Esporte",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {},
                child: Text(
                  "Água",
                  style: TextStyle(
                    color: AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
