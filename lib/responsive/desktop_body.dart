import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: const Center(child: Text('D E S K T O P')),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        /* first column */
        children: [
          Expanded(
            child: Column(
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
                      return AspectRatio(
                        aspectRatio: 68 / 9,
                        child: Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blueAccent.shade100,
                            )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          //Second column
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}
