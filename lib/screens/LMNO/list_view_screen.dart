import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text("ListView",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                //physics: const NeverScrollableScrollPhysics(),
                physics: const BouncingScrollPhysics(),
                addAutomaticKeepAlives: false,
                children: const [
                  _ListItem(
                    color: Colors.blue,
                  ),
                  _ListItem(
                    color: Colors.red,
                  ),
                  _ListItem(
                    color: Colors.yellow,
                  ),
                  _ListItem(
                    color: Colors.green,
                  ),
                  _ListItem(
                    color: Colors.orange,
                  ),
                  _ListItem(
                    color: Colors.purple,
                  ),
                  _ListItem(
                    color: Colors.brown,
                  ),
                ],
              ),
            ),
          ),
          const Text("ListView.builder",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return const _ListItem(
                  color: Colors.orange,
                );
              },
            ),
          ),
          const Text("ListView.separated",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 200,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              separatorBuilder: (_, __) => const Divider(
                color: Colors.purple,
                thickness: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return const _ListItem(
                  color: Colors.cyan,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//-------------------------------------------------------
class _ListItem extends StatelessWidget {
  final Color color;
  const _ListItem({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: color,
      ),
    );
  }
}
