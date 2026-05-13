import 'package:flutter/material.dart';
import 'package:lembrei/widgets/register/register_DateTime.dart';
import 'package:lembrei/widgets/register/register_category.dart';
import 'package:lembrei/widgets/register/register_header.dart';
import 'package:lembrei/widgets/register/register_salve.dart';
import 'package:lembrei/widgets/register/register_textFormField.dart';
import 'package:lembrei/models/lembrete.dart';

class RegisterScreens extends StatefulWidget {
  const RegisterScreens({super.key});

  @override
  State<RegisterScreens> createState() => _RegisterScreensState();
}

class _RegisterScreensState extends State<RegisterScreens> {
  final globalKey = GlobalKey<FormState>();

  final tituloController = TextEditingController();
  final descricaoController = TextEditingController();
  final dataController = TextEditingController();
  final horaController = TextEditingController();
  String? categoriaSelecionada;

  void salvarLembrete(){
    final isValid = globalKey.currentState!.validate();

    if(!isValid){
      return;
    }

    final lembrete = Lembrete(
      titulo: tituloController.text, 
      descricao: descricaoController.text, 
      data: dataController.text, 
      hora: horaController.text, 
      categoria: categoriaSelecionada ?? "Sem categoria", 
      status: "Pendente",
    );

    Navigator.pop(context,lembrete);
  }

  @override  
  void dispose(){
    tituloController.dispose();
    descricaoController.dispose();
    dataController.dispose();
    horaController.dispose();
    super.dispose();
  }

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
                  controller: tituloController,
                ),
                RegisterTextformfield(
                  nome: "Descrição", 
                  exemplo: "Detalhes do lembrete", 
                  linhas: 3,
                  controller: descricaoController,
                ),
                RegisterDateTime(
                  dateController: dataController,
                  timeController: horaController,
                ),
                RegisterCategory(
                  categoriaSelecionada: categoriaSelecionada,
                  onCategoriaSelecionada: (categoria) {
                    setState(() {
                      categoriaSelecionada = categoria;
                    });
                  },
                ),
                SizedBox(height: 60, child: RegisterSalve(onPressed: salvarLembrete,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
