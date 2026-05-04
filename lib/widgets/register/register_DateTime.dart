import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_text_styles.dart';

class RegisterDateTime extends StatefulWidget {
  const RegisterDateTime({super.key});

  @override
  State<RegisterDateTime> createState() => _RegisterDateTime();
}

class _RegisterDateTime extends State<RegisterDateTime> {
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    timeController.dispose();
    super.dispose();
  }

  Future<void> _selectDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),

      initialEntryMode: DatePickerEntryMode.input,
    );

    if (date != null) {
      dateController.text =
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
      timeController.text =
          "${time.hour.toString().padLeft(2, '0')}:"
          "${time.minute.toString().padLeft(2, '0')}";
    }
  }

  InputDecoration _decoration({required IconData icon, required String hint}) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(icon),
      suffixIcon: const Icon(Icons.keyboard_arrow_down),
      filled: true,
      fillColor: const Color(0xFFF9F9FB),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
      ),
    );
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
            controller: dateController,
            readOnly: true,
            onTap: _selectDate,
            decoration: _decoration(
              icon: Icons.calendar_today_outlined,
              hint: "28/04/2026",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Selecione uma data";
              }
              return null;
            },
          ),
      
          const SizedBox(height: 20),
      
          const Text("Hora", style: AppTextStyles.tituloMedio),
          const SizedBox(height: 8),
          TextFormField(
            controller: timeController,
            readOnly: true,
            onTap: _selectTime,
            decoration: _decoration(icon: Icons.access_time, hint: "14:30"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Selecione uma hora";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
