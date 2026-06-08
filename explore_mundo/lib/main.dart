import 'package:flutter/material.dart';

void main() {
  runApp(const ExploreMundoApp());
}

class ExploreMundoApp extends StatelessWidget {
  const ExploreMundoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explore Mundo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildButtonColumn(
    IconData icon,
    String label,
    BuildContext context,
  ) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.indigo,
            size: 30,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDestinationCard(
    String image,
    String destination,
    String description,
    int stars,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                destination,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text("$stars"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.flight_takeoff),
                label: const Text("Reservar Agora"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Explore Mundo",
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/explore.jpg',
                    height: 280,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 280,
                    color: Colors.black.withOpacity(0.35),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Explore o Mundo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Destinos incríveis esperam por você",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Pesquisar destino...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Agência Explore Mundo",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Os melhores destinos do planeta",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                const SizedBox(width: 5),
                const Text(
                  "4.9",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                buildButtonColumn(
                  Icons.flight,
                  "DESTINOS",
                  context,
                ),
                buildButtonColumn(
                  Icons.card_travel,
                  "PACOTES",
                  context,
                ),
                buildButtonColumn(
                  Icons.phone,
                  "CONTATO",
                  context,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "Destinos em Destaque",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          buildDestinationCard(
            "assets/paris.jpg",
            "Paris",
            "Pacote completo para a França",
            5,
          ),

          buildDestinationCard(
            "assets/cancun.jpg",
            "Cancún",
            "Resort All Inclusive",
            5,
          ),

          buildDestinationCard(
            "assets/gramado.jpg",
            "Gramado",
            "Turismo nacional premium",
            4,
          ),

          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  "Sobre Nós",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "A Explore Mundo atua no mercado de turismo oferecendo pacotes nacionais e internacionais com foco em qualidade, conforto e segurança.",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}