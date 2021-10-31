import 'package:appetzing/provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  late var x;

  List<int> ind = [
    0,
    1,
    2,
  ];
  List<int> num = [
    0,
    1,
    2,
    3,
  ];
  List<int> tog = [
    0,
    1,
    2,
    3,
  ];
  List image = [
    'images/c1.jpg',
    'images/c2.jpg',
    'images/c3.jpg',
    'images/c4.jpg',
  ];
  List iceCream = [
    'images/i1.jpg',
    'images/i2.jpg',
    'images/i3.jpg',
    'images/i4.jpg',
  ];
  List cake = [
    'images/ca1.jpg',
    'images/ca2.jpg',
    'images/ca3.jpg',
    'images/ca4.jpg',
  ];
  List tea = [
    'images/t1.jpg',
    'images/t2.jpg',
    'images/t3.jpg',
    'images/t4.jpg',
  ];

  List holiday = [
    'images/q1.jpg',
    'images/q2.jpg',
    'images/q3.jpg',
    'images/q4.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<States>(
      create: (context) => States(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: CircleAvatar(
            child: Image.asset('images/icdraw.png'),
            backgroundColor: Colors.grey[200],
          ),
          actions: [
            // Icon(Icons.search,color: Colors.black,),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15, spreadRadius: .5, color: Colors.grey)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Grado ',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.pink[200],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Cafe',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Provider.of<States>(context, listen: false).changeButton(ind[0]);
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                backgroundColor:
                                    Provider.of<States>(context, listen: false).currentIndex == ind[0] ? Colors.pink[200] : Colors.grey,
                              ),
                              child: Text(
                                'drink'.toUpperCase(),
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Provider.of<States>(context, listen: false).changeButton(ind[1]);
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                backgroundColor:
                                    Provider.of<States>(context).currentIndex == ind[1] ? Colors.pink[200] : Colors.grey,
                              ),
                              child: Text(
                                'appetizer'.toUpperCase(),
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            child: ElevatedButton(
                              onPressed: () {
                                Provider.of<States>(context, listen: false).changeButton(ind[2]);
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                backgroundColor:
                                    Provider.of<States>(context, listen: false).currentIndex == ind[2] ? Colors.pink[200] : Colors.grey,
                              ),
                              child: Text(
                                'pizza'.toUpperCase(),
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<States>(context, listen: false).changeText(tog[0]);
                          },
                          child: Text(
                            'Coffe',
                            style: TextStyle(
                                fontSize: 22,
                                color:
                                    Provider.of<States>(context).currentNum == 0 ? Colors.black : Colors.grey),
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Provider.of<States>(context).currentNum == 0? Colors.black : Colors.grey[100],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<States>(context, listen: false).changeText(tog[1]);

                          },
                          child: Text(
                            'ice cream',
                            style: TextStyle(
                              fontSize: 22,
                              color:
                                  Provider.of<States>(context).currentNum == 1? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color:
                                  Provider.of<States>(context).currentNum == 1
                                      ? Colors.black
                                      : Colors.grey[100],
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<States>(context, listen: false)
                                .changeText(tog[2]);
                          },
                          child: Text(
                            'cake',
                            style: TextStyle(
                              fontSize: 22,
                              color:
                                  Provider.of<States>(context).currentNum == 2
                                      ? Colors.black
                                      : Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color:
                                  Provider.of<States>(context).currentNum == 2
                                      ? Colors.black
                                      : Colors.grey[100],
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<States>(context, listen: false)
                                .changeText(tog[3]);
                          },
                          child: Text(
                            'Tea',
                            style: TextStyle(
                              fontSize: 22,
                              color:
                                  Provider.of<States>(context).currentNum == 3
                                      ? Colors.black
                                      : Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color:
                                  Provider.of<States>(context).currentNum == 3
                                      ? Colors.black
                                      : Colors.grey[100],
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2),
                          initialPage: 0,
                          height: 150,
                          onPageChanged: (index, _) {
                            Provider.of<States>(context, listen: false)
                                .changeSlider(index);
                          },
                        ),
                        items:  Provider.of<States>(context).currentNum==0? image.map((imgUrl) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    imgUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        }).toList(): Provider.of<States>(context).currentNum==1?
                        iceCream.map((imgUrl) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    imgUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        }).toList():Provider.of<States>(context).currentNum==2?
                        cake.map((imgUrl) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    imgUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        }).toList():
                        tea.map((imgUrl) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    imgUrl,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        }).toList()
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 65,
                          height: 4,
                          color: Provider.of<States>(context).currentSlid == 0
                              ? Colors.black
                              : Colors.grey[50],
                        ),
                        Container(
                          width: 65,
                          height: 4,
                          color: Provider.of<States>(context).currentSlid == 1
                              ? Colors.black
                              : Colors.grey[50],
                        ),
                        Container(
                          width: 65,
                          height: 4,
                          color: Provider.of<States>(context).currentSlid == 2
                              ? Colors.black
                              : Colors.grey[50],
                        ),
                        Container(
                          width: 65,
                          height: 4,
                          color: Provider.of<States>(context).currentSlid == 3
                              ? Colors.black
                              : Colors.grey[50],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Text('Holiday Special',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         Text('view more',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                   Container(
                     height: 130,
                     child: ListView.separated(
                       scrollDirection: Axis.horizontal,
                         itemCount: 4,
                         separatorBuilder: (index,context)=>SizedBox(width: 20,),
                         itemBuilder: (context,index)
                         {
                           return  Container(
                             height: 130,
                             child: Row(
                               children: [
                                 ClipRRect(
                                     borderRadius : BorderRadius.circular(20),
                                     child: Image.asset(holiday[index], width: 130,fit: BoxFit.cover ,)
                                 ),
                                 Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 4,left: 5),
                                       child: Text('FakFakina',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
                                     ),
                                     Text('200 ml',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
                                     Spacer(),
                                     Text('2 BD',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),
                                   ],
                                 ),
                               ],
                             ),
                           );
                         },
                     ),
                   ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
