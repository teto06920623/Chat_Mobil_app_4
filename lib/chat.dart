import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Row(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/4140/4140048.png',
                    ),
                  ),
                ),
                Text('Chat'),
              ],
            ),
            centerTitle: true,
          ),
      body: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 203, 204, 205),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/4140/4140048.png',
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/4140/4140048.png',
                    ),
                  ),
                  title: Text('User $index'),
                  subtitle: Text('Last message from User'),
                  trailing: Icon(Icons.check, size: 15),
                );
              },
              
            ),
          ),
        ],
      ),
    );
  }
}
