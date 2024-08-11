import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({super.key});

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  bool _isFabOpen = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dogStatus.png',
                height: 350,
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: 'Your explore list is ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'EMPTY',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sorry, we could not find any user near you.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const Text(
                "Try increasing your search radius.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action for button
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
                child: const Text(
                  'INCREASE RADIUS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        // Blurred background when the FAB is open
        if (_isFabOpen)
          GestureDetector(
            onTap: () {
              setState(() {
                _isFabOpen = false;
              });
            },
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ).blurred(
              blur: 8,
              colorOpacity: 0.2,
              blurColor: Colors.black,
            ),
          ),
        // FAB and the additional buttons
        Positioned(
          bottom: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (_isFabOpen) ...[
                _buildFABWithLabel('Dating', Icons.favorite),
                const SizedBox(height: 10),
                _buildFABWithLabel('Matrimony', Icons.ring_volume),
                const SizedBox(height: 10),
                _buildFABWithLabel('Buy-Sell-Rent', Icons.shopping_bag),
                const SizedBox(height: 10),
                _buildFABWithLabel('Business Cards', Icons.card_membership),
                const SizedBox(height: 10),
                _buildFABWithLabel('Netclan Groups', Icons.group),
                const SizedBox(height: 10),
                _buildFABWithLabel('Jobs', Icons.work),
                const SizedBox(height: 10),
                _buildFABWithLabel('Notes', Icons.note),
                const SizedBox(height: 10),
              ],
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _isFabOpen = !_isFabOpen;
                  });
                },
                backgroundColor: Colors.blue.shade900,
                child: Icon(
                  _isFabOpen ? Icons.close : Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper function to build FAB with text label
  Widget _buildFABWithLabel(String label, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          onPressed: () {
            // Action for this button
          },
          backgroundColor: Colors.amber,
          child: Icon(
            icon,
            color: Colors.blue.shade900,
          ),
          heroTag: label, // Unique tag for each FAB
        ),
      ],
    );
  }
}
