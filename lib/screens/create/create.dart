import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // Submit handler

  void handleSubmit() {
    if (_nameController.text.isNotEmpty && _sloganController.text.isNotEmpty) {
      Navigator.pushNamed(context, '/home');
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Error'),
                content: const Text('Please fill out all fields.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Close'),
                  )
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Character Creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            // Welcome message
            Center(
              child: Icon(Icons.code, color: AppColors.primaryColor),
            ),
            const Center(
              child: StyledHeading("Welcome, new player."),
            ),
            const Center(
              child: StyledText("Create a name & slogan for your character."),
            ),
            const SizedBox(height: 30),

            // Form
            TextField(
              controller: _nameController,
              cursorColor: AppColors.textColor,
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.headlineMedium),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText("Character name")),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              cursorColor: AppColors.textColor,
              style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.headlineMedium),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: StyledText("Character slogan")),
            ),
            const SizedBox(height: 30),
            Center(
                child: StyledButton(
              child: const StyledHeading("Create character"),
              onPressed: handleSubmit,
            ))
          ],
        ),
      ),
    );
  }
}
