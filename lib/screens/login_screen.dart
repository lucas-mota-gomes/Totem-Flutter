import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late MaskedTextController cpfController;
  Timer? inactivityTimer;

  @override
  void initState() {
    super.initState();
    cpfController = MaskedTextController(mask: '000.000.000-00');
    cpfController.addListener(() {
      setState(() {});
      resetInactivityTimer();
    });
    initInactivityTimer();
  }

void initInactivityTimer() {
  inactivityTimer = Timer(const Duration(seconds: 20), () {
    if (mounted) {
      Fluttertoast.showToast(
        msg: "Inatividade detectada",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
        webPosition: "center",
      );
      Navigator.of(context).popUntil((route) => route.isFirst);
    }
  });
}


  void resetInactivityTimer() {
    inactivityTimer?.cancel();
    initInactivityTimer();
  }

  @override
  void dispose() {
    cpfController.dispose();
    inactivityTimer?.cancel();
    super.dispose();
  }

  void clearCpf() {
    cpfController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: resetInactivityTimer,
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(100),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Fundo totem vertical.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(90),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Digite seu CPF para entrar:',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'lucky',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                        width: 550,
                        child: TextField(
                          controller: cpfController,
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'lucky',
                          ),
                          decoration: InputDecoration(
                            labelText: 'CPF',
                            contentPadding: const EdgeInsets.all(20),
                            labelStyle: const TextStyle(
                                fontSize: 25,
                                fontFamily: 'lucky',
                                color: Colors.black),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            border: const OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    if (cpfController.text.length == 14)
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xFFF9BE2B),
                            padding: const EdgeInsets.fromLTRB(85, 20, 85, 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: const BorderSide(
                                  color: Colors.white, width: 6),
                            ),
                          ),
                          onPressed: () async {
                            await Navigator.pushNamed(context, '/faturas',
                                arguments: cpfController.text);
                            clearCpf();
                          },
                          child: const Text(
                            'Toque para entrar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'lucky',
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
