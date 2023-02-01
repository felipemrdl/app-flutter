import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../config/custom_colors.dart';
import 'components/input_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#':RegExp(r'[0-9]')}
  );

  final telefoneFormatter = MaskTextInputFormatter(
    mask: '## #####-####',
    filter: {'#':RegExp(r'[0-9]')}
  );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; 

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                const Expanded(
                  child: Center(
                    child: Text('Cadastro',
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const InputTextfield(icon: Icons.email, label: 'Email'),
                      const InputTextfield(icon: Icons.lock, label: 'Senha', isSecret: true),
                      const InputTextfield(icon: Icons.person, label: 'Nome'),
                      InputTextfield(icon: Icons.phone, label: 'Celular', inputFormatters: [telefoneFormatter],),
                      InputTextfield(icon: Icons.file_copy, label: 'CPF', inputFormatters: [cpfFormatter],),
                  
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)
                            )
                          ),
                        onPressed: () {},
                          child: const Text(
                          'Cadastrar usuário',
                            style: TextStyle(
                              fontSize: 18
                            ),
                          )
                        )
                      )
                    ],
                  ),
                )
              ]),
            
              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
