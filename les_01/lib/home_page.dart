import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
       title: const Text('Brain Builder')
      ),
      body: Column(
        children: [
          Wrap(
            children: [
            ElevatedButton(onPressed: (){},
             
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              shape:const StadiumBorder(),
             ),
                  child: const Text('Build wealth for yourself'),
             ),

             ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Start Businesses from scratch'),
                ),
          ],
          )
        ],
      )
    );
  }
}
