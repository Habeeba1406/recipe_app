import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/filter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [
    'Ingredients',
    'Meal Type',
    'Diet',
    'Cook Time',
    'Nutrition',
  ];
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 8),
                            child: Text(
                              'Helloo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: CircleAvatar(child: Icon(Icons.notifications)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      'Check Amaizing Recipes...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterPage(),
                      )),
                  child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Card(
                      color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          data[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Popular Recepies',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/pizza.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        )),
              ),
            ),
            // Container(
            //   // height: 100,

            //   width: double.infinity,
            //   margin: const EdgeInsets.all(10),

            //   decoration: BoxDecoration(
            //     color: Colors.orange,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: const Image(
            //     height: 200,
            //     image: AssetImage(
            //       'assets/images/images (1).jpeg',
            //     ),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //       color: Colors.orange,
            //       borderRadius: BorderRadius.circular(15)),
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 10),
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(top: 20),
            //               child: Text(
            //                 'Popular Creators',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 26,
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(top: 20),
            //               child: TextButton(
            //                   onPressed: () {},
            //                   child: Text(
            //                     'See All',
            //                     style: TextStyle(
            //                       color: Colors.black,
            //                     ),
            //                   )),
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ),
    );
  }

  // itemCategory({required int index, required String name}) => GestureDetector(
  //       onTap: () => setState(() => isSelected = index),
  //       child: Container(
  //         width: 100,
  //         height: 40,
  //         margin: const EdgeInsets.only(top: 15, right: 15),
  //         alignment: Alignment.center,
  //         decoration: BoxDecoration(
  //           color: isSelected == index ? Colors.orange : Colors.orange.shade300,
  //           borderRadius: BorderRadius.circular(8),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.only(left: 10),
  //           child: Text(
  //             name,
  //             style: const TextStyle(color: Colors.white, fontSize: 14),
  //           ),
  //         ),
  //       ),
  //     );
}
