import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:med_app/util/doctors_card.dart';
import 'util/categeory_card.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // NAME
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Sahil Gupta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  // PROFILE PICTURE
                  Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(Icons.person)),
                ],
              ),
            ),

            SizedBox(height: 25),

            // card -> how you feel

            // search bar
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    // animation or picture
                    Container(
                      height: 100,
                      width: 100,
                      // color: Colors.deepPurple[200],
                      child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_gnxhgrd6.json',
                      ),
                    ),

                    const SizedBox(width: 25),

                    // how yo feel + button
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'How Do You Feel?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Fill Your Medical Card Now',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                            width: 125,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                                child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ))),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: 1,
            // ),

            // search bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.deepPurple,
                      ),
                      border: InputBorder.none,
                      hintText: 'How Can We Help You?'),
                ),
              ),
            ),

            const SizedBox(
              height: 1,
            ),

            // listview (horizontal) -> categories

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                      iconImgPath: 'images/tooth.png', categoryName: 'Dentist'),
                  CategoryCard(
                      iconImgPath: 'images/surgeon.png',
                      categoryName: 'Surgeon'),
                  CategoryCard(
                      iconImgPath: 'images/eye.png', categoryName: 'Eye'),
                  CategoryCard(
                      iconImgPath: 'images/pharmacist.png',
                      categoryName: 'Pharmacist'),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // doctor list

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor List',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Doctors(
                    doctImgPath: 'images/doct1.png',
                    doctName: 'Raj Mukhi',
                    doctProfession: 'dentist',
                    rating: '4.9'),
                Doctors(
                    doctImgPath: 'images/doct2png.png',
                    doctName: 'Alia Singh',
                    doctProfession: 'neurologolist',
                    rating: '4.9'),
                Doctors(
                    doctImgPath: 'images/doct5.png',
                    doctName: 'Rakhi Bhat',
                    doctProfession: 'dermatologist',
                    rating: '4.9'),
                Doctors(
                    doctImgPath: 'images/doct4png.png',
                    doctName: 'Anjela Yu',
                    doctProfession: 'oncologist',
                    rating: '4.9'),
                Doctors(
                    doctImgPath: 'images/doct6.png',
                    doctName: 'Andrew tate',
                    doctProfession: 'oncologist',
                    rating: '4.9'),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
