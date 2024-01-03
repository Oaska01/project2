import 'package:flutter/material.dart';
import 'ViewFootball.dart';
import 'ViewBasketball.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Center(child: Column(
        children: [
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: onPressed(){
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const FPlayer()),);

        },
          child: const Icon(Icons.sports_soccer, size: 50),


        ),
        const SizedBox(height: 20,)
        ,
          ElevatedButton(onPressed: onPressed(){
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const BPlayer()),);

          },
            child: const Icon(Icons.sports_basketball, size: 50),


          ),
        const SizedBox(height: 20,),

          ElevatedButton(onPressed: onPressed(){
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Page2()),);

          },
            child: const Text('Add player'),


          ),
        ],



        ),
      ),
    );
  }
}
