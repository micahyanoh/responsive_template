import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: const Center(child: Text('M O B I L E')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          /*
            youtube video
           */
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          /*
            comments and videos
           */
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(8),
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blueAccent.shade100,
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
