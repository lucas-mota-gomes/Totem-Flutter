import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  void _showPlanModal(BuildContext context, String planType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Planos $planType'),
          content: SingleChildScrollView(
            // Optional: allow scrolling if content is too large
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 650.0, // Defina a altura desejada
                  child: AspectRatio(
                    aspectRatio:
                        16 / 9, // Defina a proporção desejada (ex: 16:9)
                    child: CarouselSlider.builder(
                      itemCount: _getPlans(planType).length,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        final plan = _getPlans(planType)[itemIndex];
                        return _buildPlanCard(
                            plan['title']!, plan['description']!);
                      },
                      options: CarouselOptions(
                        height: 1000.0, // Ajuste à altura do SizedBox
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        viewportFraction:
                            0.8, // Opcional: controla a largura do item central
                      ),
                    ),
                  ),
                ),
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38.0),
            ),
            SizedBox(height: 8.0),
            Text(description, style: TextStyle(fontSize: 26.0)),
          ],
        ),
      ),
    );
  }

  List<Map<String, String>> _getPlans(String planType) {
    if (planType == 'Combos') {
      return [
        {
          'title': 'COMBO I',
          'description':
              '300 MEGA DOWNLOAD\n100 MEGA UPLOAD\n\nR\$ 139,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 12 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM SURPRESA NA CONTA\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
        },
        {
          'title': 'COMBO II',
          'description':
              '400 MEGA DOWNLOAD\n150 MEGA UPLOAD\n\nR\$ 169,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 17 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM SURPRESA NA CONTA\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
        },
        {
          'title': 'COMBO III',
          'description':
              '600 MEGA DOWNLOAD\n200 MEGA UPLOAD\n\nR\$ 199,90\nWI-FI PLUS 5 EM COMODATO\nINTERNET 25 GB NO MÓVEL\nLIGAÇÕES ILIMITADAS NO MÓVEL\nACUMULO DO MÊS ANTERIOR\nPORTABILIDADE GRATUITA\nFIBRA STREAMING + TV\nTELEFONIA FIXA ILIMITADA\nTELEMEDICINA SULAMERICA\nFIDELIDADE DE 12 MESES\nSEM CONSUMO DE DADOS\n(*PAGAMENTO VIA PIX ATÉ O VENCIMENTO)',
        },
      ];
    } else if (planType == 'Internet') {
      return [
        {
          'title': 'PLANO 200 MEGA',
          'description':
              '200 MEGA DOWNLOAD\n70 MEGA UPLOAD\n\nR\$ 69,90\nPLANO START\n100% FIBRA ÓPTICA\nOPTICAL NETWORK UNIT\nIPV4 E IPV6\nFIBRA STREAMING ON DEMAND',
        },
        {
          'title': 'PLANO 300 MEGA',
          'description':
              '300 MEGA DOWNLOAD\n100 MEGA UPLOAD\n\nR\$ 89,90\nPLANO FLASH\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 63 CANAIS HD',
        },
        {
          'title': 'PLANO 400 MEGA',
          'description':
              '400 MEGA DOWNLOAD\n150 MEGA UPLOAD\n\nR\$ 99,90\nPLANO ULTRA\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 97 CANAIS HD',
        },
        {
          'title': 'PLANO 500 MEGA',
          'description':
              '500 MEGA DOWNLOAD\n200 MEGA UPLOAD\n\nR\$ 119,90\nPLANO POWER\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 134 CANAIS HD',
        },
        {
          'title': 'PLANO 700 MEGA',
          'description':
              '700 MEGA DOWNLOAD\n300 MEGA UPLOAD\n\nR\$ 139,90\nPLANO FAST\n100% FIBRA ÓPTICA\nWI-FI 5 PLUS ONT\nIPV4 E IPV6\nFIBRA STREAMING\nFIBRA TV 153 CANAIS FHD',
        },
        {
          'title': 'PLANO GAMER 1 GIGA',
          'description':
              '1 GIGA DOWNLOAD\n500 MEGA UPLOAD\n\nR\$ 199,90\nIP PUBLICO\nPING MAIS BAIXO\nUPLOAD = DOWNLOAD\nWI-FI 6 PLUS ONT\nMELHORES ROTAS\nNAT-1',
        },
      ];
    } else if (planType == 'Avançado') {
      return [
        {
          'title': 'SMART - 17 GB',
          'description':
              '12 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 54,90',
        },
        {
          'title': 'STREAMING - 25 GB',
          'description':
              '20 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 64,90',
        },
        {
          'title': 'WORK - 47 GB',
          'description':
              '42 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 84,90',
        },
        {
          'title': 'BASIC - 9 GB',
          'description':
              '4 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 39,90',
        },
        {
          'title': 'TALK - 12 GB',
          'description':
              '7 GB + 5 GB Portabilidade*\nAcumulo do mês anterior\nLigação Ilimitada\nPortabilidade Gratuita\nSem Consulta SPC/SERASA\nSem Surpresa na Conta\nSem Consumo de Dados\n(*PAGAMENTO ANTES DO VENCIMENTO)\nR\$ 44,90',
        },
      ];
    } else {
      return [];
    }
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
                  Container(
                    width: 500,
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
                  Container(
                    width: 500,
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
                  Container(
                    width: 500,
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
                  Container(
                    width: 500,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
