import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:lembrei/theme/app_colors.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterDateTime extends StatefulWidget {
  final TextEditingController dateController;
  final TextEditingController timeController;

  const RegisterDateTime({
    super.key,
    required this.dateController,
    required this.timeController,
  });

  @override
  State<RegisterDateTime> createState() => _RegisterDateTime();
}

class _RegisterDateTime extends State<RegisterDateTime> {

  Future<void> _selectDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),

      initialEntryMode: DatePickerEntryMode.input,
    );

    if (date != null) {
      widget.dateController.text =
          "${date.day.toString().padLeft(2, '0')}/"
          "${date.month.toString().padLeft(2, '0')}/"
          "${date.year}";
    }
  }

  Future<void> _selectTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),

      initialEntryMode: TimePickerEntryMode.input,

      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (time != null) {
      widget.timeController.text =
          "${time.hour.toString().padLeft(2, '0')}:"
          "${time.minute.toString().padLeft(2, '0')}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Data", style: AppTextStyles.tituloMedio),
          const SizedBox(height: 8),
          TextFormField(
            controller: widget.dateController,
            readOnly: true,
            onTap: _selectDate,
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.calendar_today_outlined),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
              hintText: 
                "${DateTime.now().day.toString().padLeft(2, '0')}/"
                "${DateTime.now().month.toString().padLeft(2, '0')}/"
                "${DateTime.now().year}",
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.textoSecundario),
              )
            ),
            validator: ValidationBuilder(
              requiredMessage: "Selecione uma data"
            ).build(),
          ),
      
          const SizedBox(height: 20),
      
          const Text("Hora", style: AppTextStyles.tituloMedio),
          const SizedBox(height: 8),
          TextFormField(
            controller: widget.timeController,
            readOnly: true,
            onTap: _selectTime,
            decoration: InputDecoration(
              prefixIcon:Icon(Icons.access_alarm_outlined),
              suffixIcon: Icon(Icons.keyboard_arrow_down),
              hintText: 
                "${DateTime.now().hour.toString().padLeft(2, '0')}:"
                "${DateTime.now().minute.toString().padLeft(2, '0')}",
              filled: true,
              fillColor: Colors.grey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: AppColors.textoSecundario),
              )
            ),
            validator: ValidationBuilder(
              requiredMessage: "Selecione uma hora"
            ).build(),
          ),
        ],
      ),
    );
  }
}
