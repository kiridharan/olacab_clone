import 'package:flutter/material.dart';

class UberCard extends StatelessWidget {
  const UberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
            spreadRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.grey.shade400],
          begin: Alignment.topCenter,
          end: Alignment.centerRight,
          stops: const [0.1, 1],
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 16,
            top: 40,
            child: Text(
              'Uber Cash',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Positioned(
            left: 16,
            top: 60,
            child: Text(
              '\$ 10.00',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Positioned(
            right: 16,
            top: 40,
            child: Icon(Icons.arrow_forward_ios),
          ),
          Positioned(
            left: 26,
            bottom: 32,
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  '+ Gift Card',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
