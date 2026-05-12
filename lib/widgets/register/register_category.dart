import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterCategory extends StatefulWidget {
  const RegisterCategory({super.key});

  @override
  State<RegisterCategory> createState() => _RegisterCategoryState();
}

class _RegisterCategoryState extends State<RegisterCategory> {
  String? categoriaSelecionada;

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
                  backgroundColor: categoriaSelecionada == "Saúde" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Saúde";
                  });
                },
                child: Text(
                  "Saúde",
                  style: TextStyle(
                    color: categoriaSelecionada == "Saúde" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: categoriaSelecionada == "Trabalho" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Trabalho";
                  });
                },
                child: Text(
                  "Trabalho",
                  style: TextStyle(
                    color: categoriaSelecionada == "Trabalho" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: categoriaSelecionada == "Estudos" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Estudos";
                  });
                },
                child: Text(
                  "Estudos",
                  style: TextStyle(
                    color: categoriaSelecionada == "Estudos" ? Colors.white : AppColors.principal,
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
                  backgroundColor: categoriaSelecionada == "Pessoal" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Pessoal";
                  });
                },
                child: Text(
                  "Pessoal",
                  style: TextStyle(
                    color: categoriaSelecionada == "Pessoal" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: categoriaSelecionada == "Esporte" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Esporte";
                  });
                },
                child: Text(
                  "Esporte",
                  style: TextStyle(
                    color: categoriaSelecionada == "Esporte" ? Colors.white : AppColors.principal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              SizedBox(width: 8),
          
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: categoriaSelecionada == "Água" ? AppColors.principal : AppColors.background,
                  side: BorderSide(color: AppColors.principal),
                ),
                onPressed: () {
                  setState(() {
                    categoriaSelecionada = "Água";
                  });
                },
                child: Text(
                  "Água",
                  style: TextStyle(
                    color: categoriaSelecionada == "Água" ? Colors.white : AppColors.principal,
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
