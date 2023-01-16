import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Juan',
      'last_name' : 'Perez',
      'email'     : 'Juan@Admin.com',
      'password'  : '123456',
      'role'      : 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
         title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputWidget(
                  //hintText: 'Ingrese su nombre',
                  labelText: 'Nombre',
                  helperText: 'Ingrese su nombre',
                  icon: Icons.verified_user_rounded,
                  suffixIcon: Icons.accessibility_new_rounded, 
                  formProperty: 'first_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30.0),
          
                CustomInputWidget(
                  //hintText: 'Ingrese su apellido',
                  labelText: 'Apellido',
                  helperText: 'Ingrese su apellido',
                  icon: Icons.person_pin,
                  suffixIcon: Icons.person,
                  formProperty: 'last_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30.0),
          
                CustomInputWidget(
                  //hintText: 'Ingrese su correo',
                  labelText: 'Correo',
                  helperText: 'Ingrese su correo',
                  icon: Icons.email,
                  suffixIcon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30.0),
          
                CustomInputWidget(
                  hintText: 'Ingrese su contraseña',
                  labelText: 'Contraseña',
                   icon: Icons.password,
                  suffixIcon: Icons.security,
                  obscureText: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30.0),

                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin')
                    ),
                    DropdownMenuItem(
                      value: 'Superuser',
                      child: Text('Superuser')
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer')
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer')
                    ),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
                const SizedBox(height: 30.0),
                
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode());

                    if(!myFormKey.currentState!.validate()) {
                      print("formulario no valido");
                      return;
                    }

                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: Center(child: Text('Guardar'))
                    ),
                )
              ],
            ),
          ),
        ),
      )
      );
  }
}

