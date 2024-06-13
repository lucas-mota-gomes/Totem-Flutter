import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  void _showPlanModal(BuildContext context, String planType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Planos $planType'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                if (planType == 'Combos') ...[
                  _buildPlanCard(
                    'COMBO I',
                    '300 MEGA DOWNLOAD\n100 MEGA UPLOAD\n\nR\$ 139,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 12 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM SURPRESA NA CONTA\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)\nASSINE',
                  ),
                  _buildPlanCard(
                    'COMBO II',
                    '400 MEGA DOWNLOAD\n150 MEGA UPLOAD\n\nR\$ 169,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 17 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM SURPRESA NA CONTA\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)\nASSINE',
                  ),
                  _buildPlanCard(
                    'COMBO III',
                    '600 MEGA DOWNLOAD\n200 MEGA UPLOAD\n\nR\$ 199,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 25 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEFONIA FIXA ILIMITADA\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)\nASSINE',
                  ),
                ] else if (planType == 'Internet') ...[
                  _buildPlanCard(
                    'PLANO 200 MEGA',
                    '200 MEGA DOWNLOAD\n70 MEGA UPLOAD\n\nR\$ 69,90\nPLANO START\n100% FIBRA ÓPTICA\nOPTICAL NETWORK UNIT\nIPV4 E IPV6\nFIBRA STREAMING ON DEMAND\nASSINE',
                  ),
                  _buildPlanCard(
                    'PLANO 300 MEGA',
                    '300 MEGA DOWNLOAD\n100 MEGA UPLOAD\n\nR\$ 89,90\nPLANO FLASH\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 63 CANAIS HD\nASSINE',
                  ),
                  _buildPlanCard(
                    'PLANO 400 MEGA',
                    '400 MEGA DOWNLOAD\n150 MEGA UPLOAD\n\nR\$ 99,90\nPLANO ULTRA\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 97 CANAIS HD\nASSINE',
                  ),
                  _buildPlanCard(
                    'PLANO 500 MEGA',
                    '500 MEGA DOWNLOAD\n200 MEGA UPLOAD\n\nR\$ 119,90\nPLANO POWER\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 134 CANAIS HD\nASSINE',
                  ),
                  _buildPlanCard(
                    'PLANO 700 MEGA',
                    '700 MEGA DOWNLOAD\n300 MEGA UPLOAD\n\nR\$ 139,90\nPLANO FAST\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 153 CANAIS FHD\nASSINE',
                  ),
                  _buildPlanCard(
                    'PLANO GAMER 1 GIGA',
                    '1 GIGA DOWNLOAD\n500 MEGA UPLOAD\n\nR\$ 199,90\nIP PUBLICO\nPING MAIS BAIXO\nUPLOAD = DOWNLOAD\nWI-FI 6 PLUS ONT\nMELHORES ROTAS\nNAT-1\nASSINE',
                  ),
                ] else if (planType == 'Avançado') ...[
                  _buildPlanCard(
                    'SMART - 17 GB',
                    '12 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 54,90\nASSINE',
                  ),
                  _buildPlanCard(
                    'STREAMING - 25 GB',
                    '20 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 64,90\nASSINE',
                  ),
                  _buildPlanCard(
                    'WORK - 47 GB',
                    '42 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 84,90\nASSINE',
                  ),
                  _buildPlanCard(
                    'BASIC - 9 GB',
                    '4 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 39,90\nASSINE',
                  ),
                  _buildPlanCard(
                    'TALK - 12 GB',
                    '7 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 44,90\nASSINE',
                  ),
                ],
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildPlanCard(String title, String description) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(description),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/Financeiro.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            child: const Text('Visualizar Minhas Faturas'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                            ),
                            onPressed: () {
                              _showPlanModal(context, 'Combos');
                            },
                            child: const Text('Combos'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                            ),
                            onPressed: () {
                              _showPlanModal(context, 'Internet');
                            },
                            child: const Text('Planos Internet'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                            ),
                            onPressed: () {
                              _showPlanModal(context, 'Avançado');
                            },
                            child: const Text('Planos Telefonia Móvel'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
