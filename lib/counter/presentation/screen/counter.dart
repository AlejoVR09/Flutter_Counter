import "package:flutter/material.dart";

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        leading: IconButton(
          icon: Icon(Icons.refresh_rounded),
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'click${counter == 1 ? '' : 's'}:',
              style:
                  const TextStyle(fontSize: 120, fontWeight: FontWeight.w200),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 65, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
          CustomFloatingButton(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          CustomFloatingButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CustomFloatingButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.exposure_minus_1_outlined),
      onPressed: () {},
    );
  }
}
