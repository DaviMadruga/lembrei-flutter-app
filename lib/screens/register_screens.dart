import 'package:flutter/material.dart';
import 'package:lembrei/widgets/register/register_DateTime.dart';
import 'package:lembrei/widgets/register/register_category.dart';
import 'package:lembrei/widgets/register/register_header.dart';
import 'package:lembrei/widgets/register/register_salve.dart';
import 'package:lembrei/widgets/register/register_textFormField.dart';

class RegisterScreens extends StatelessWidget {
  const RegisterScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
              RegisterHeader(),
              RegisterTextformfield(
                nome: "Título",
                exemplo: "Ex: Tomar remédio",
                linhas: 1,
              ),
              RegisterTextformfield(
                nome: "Descrição", 
                exemplo: "Detalhes do lembrete", 
                linhas: 3
              ),
              RegisterDateTime(),
              RegisterCategory(),
              Expanded(child: RegisterSalve()),
              
            ],
          ),
        ),
      ),
    );
  }
}
