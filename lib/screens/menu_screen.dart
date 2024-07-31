import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:totem/models/planos.dart';
import 'package:totem/models/planos_repository.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key}) : super(key: key);

  void _showPlanModal(BuildContext context, String planType) {
    final plans = PlanosRepository.getPlans(planType);
    final List<GlobalKey> keys =
        List.generate(plans.length, (index) => GlobalKey());
    double minWidth = 0;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      for (var key in keys) {
        final context = key.currentContext;
        if (context != null) {
          final width = context.size?.width ?? 0;
          if (width > minWidth) {
            minWidth = width;
          }
        }
      }
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF3e6e96), // Cor do fundo do modal alterada
          title:
              Text('Planos $planType', style: TextStyle(color: Colors.white)),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CarouselSlider.builder(
                    itemCount: plans.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      final plan = plans[itemIndex];
                      return PlanCard(
                        key: keys[itemIndex],
                        title: plan.title,
                        description: plan.description,
                        advantages: plan.advantages,
                        minWidth: minWidth,
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.7,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFFFA00D),
                foregroundColor: Colors.white,
              ),
              child:
                  Text('Fechar', style: TextStyle(fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
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
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
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
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
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
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () {
                        _showPlanModal(context, 'Avançado');
                      },
                      child: const Text('Planos Telefonia Móvel'),
                    ),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () {
                        _showPlanModal(context, 'TV');
                      },
                      child: const Text('TV por Assinatura'),
                    ),
                  ),
                  Container(
                    width: 500,
                    margin: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFA00D),
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () {
                        _showPlanModal(context, 'TelefoniaFixa');
                      },
                      child: const Text('Telefonia Fixa'),
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

class PlanCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> advantages;
  final double minWidth;
  final Key? key;

  PlanCard({
    this.key,
    required this.title,
    required this.description,
    required this.advantages,
    required this.minWidth,
  });

  @override
  @override
Widget build(BuildContext context) {
  return Card(
    color: Color.fromARGB(255, 255, 255, 255),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: minWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Colors.black),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF79B14),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ...advantages.map((advantage) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.check, size: 24, color: Colors.green),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                advantage,
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

}
