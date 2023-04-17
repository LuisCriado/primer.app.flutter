import 'package:flutter/material.dart';

import '../wiches/wiches.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Luis',
      'last_name': 'Luis',
      'email': 'Luisdcriado1@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputFiled(
                    labelText: 'Nombre',
                    helperText: 'Quien sos',
                    hintText: 'whwhwhw',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomInputFiled(
                    labelText: 'Email',
                    helperText: 'Lopé',
                    hintText: 'whwhwhw',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomInputFiled(
                    labelText: '******',
                    helperText: 'contraseña',
                    hintText: 'whwhwhw',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('formulario no valido');
                          return;
                        }
                        //imprimir valores de formulario
                        print(formValues);
                      },
                      child: Text('guardar'))
                  //     )
                ],
              ),
            )),
      ),
    );
  }
}
