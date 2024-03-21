// ignore_for_file: use_build_context_synchronously, library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:totem/models/faturas.dart';
import 'package:totem/models/pix.dart';
import 'package:totem/services/faturas.dart';

class FaturasScreen extends StatefulWidget {
  final String cpf;

  const FaturasScreen({Key? key, required this.cpf}) : super(key: key);

  @override
  _FaturasScreenState createState() => _FaturasScreenState();
}

class _FaturasScreenState extends State<FaturasScreen> {
  late Future<List<Fatura>> futureFaturas;

  @override
  void initState() {
    super.initState();
    futureFaturas = fetchFaturas(widget.cpf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faturas'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          image: const DecorationImage(
            image: AssetImage(
                'assets/Financeiro.png'), // Caminho para a sua imagem de fundo
            fit: BoxFit.cover,
          ),
        ),
        child: FutureBuilder<List<Fatura>>(
          future: futureFaturas,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var fatura = snapshot.data![index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.all(10),
                    elevation: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 255, 255, 255)
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(fatura.nossoNumero),
                            trailing: ElevatedButton.icon(
                              icon: const Icon(Icons.payment),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.yellow, // Cor do texto
                              ),
                              label: const Text('Pagar com PIX'),
                              onPressed: () async {
                                try {
                                  PixInfo pixInfo = await fetchPixInfo(
                                      widget.cpf, fatura.documentoId);

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        child: Container(
                                          padding: const EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              const Text(
                                                  'QR Code para Pagamento'),
                                              const SizedBox(height: 10),
                                              Image.memory(base64Decode(pixInfo
                                                  .qrCodeBase64
                                                  .split(',')
                                                  .last)),
                                              const SizedBox(height: 20),
                                              ElevatedButton(
                                                child: const Text('Fechar'),
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                } catch (e) {
                                  // Trate o erro aqui
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            'Erro ao buscar informações do PIX: $e')),
                                  );
                                }
                              },
                            ),
                          ),
                          const Divider(color: Colors.black),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Vencimento'),
                                Text(fatura.dataVencimento),
                              ],
                            ),
                          ),
                          const Divider(color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Valor'),
                                Text(fatura.valor),
                              ],
                            ),
                          ),
                          const Divider(color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Status'),
                                Text(fatura.situacao),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              // Chama o modal de erro quando o FutureBuilder completa com erro
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Erro'),
                      content:
                          const Text('Não encontramos faturas para este CPF'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Fecha o modal
                            Navigator.of(context).pushReplacementNamed(
                                '/login'); // Navega para a tela de login
                          },
                        ),
                      ],
                    );
                  },
                );
              });
              return const Text(
                  'Carregando...'); // Ou algum outro widget de espera/carregamento
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
