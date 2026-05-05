import 'package:flutter/material.dart';
import 'package:lembrei/widgets/register/register_DateTime.dart';
import 'package:lembrei/widgets/register/register_category.dart';
import 'package:lembrei/widgets/register/register_header.dart';
import 'package:lembrei/widgets/register/register_salve.dart';
import 'package:lembrei/widgets/register/register_textFormField.dart';

class RegisterScreens extends StatefulWidget {
  const RegisterScreens({super.key});

  @override
  State<RegisterScreens> createState() => _RegisterScreensState();
}

class _RegisterScreensState extends State<RegisterScreens> {
  final globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: globalKey,
            child: ListView(children: [
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
                SizedBox(height: 60, child: RegisterSalve()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
