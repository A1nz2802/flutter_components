import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'a1nz',
      'apellidos': 'wall',
      'email': 'algo@google.com',
      'password': 'coolpassword',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs and Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Correo del usuario',
                  labelText: 'Correo',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  keyboardType: TextInputType.name,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
