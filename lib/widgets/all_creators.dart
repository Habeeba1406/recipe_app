import 'package:flutter/material.dart';

class AllCreators extends StatefulWidget {
  const AllCreators({super.key});

  @override
  State<AllCreators> createState() => _AllCreatorsState();
}

class _AllCreatorsState extends State<AllCreators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Creators',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          )),
      body: ListView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaJm2_Izxs7ZDpd7gs1DGi7Is3zvPJB-a9hg&usqp=CAU'),
              ),
              title: Text(
                'name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'chef description',
                style: TextStyle(fontSize: 18),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
