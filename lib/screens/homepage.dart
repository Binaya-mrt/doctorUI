import 'package:docui/widgets/doctorlist.dart';
import 'package:docui/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _colour = const Color(0xff575CE5);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Hello \n',
                        style: TextStyle(
                          color: Color(0xff541bb5),
                          fontSize: 20.0,
                        ),
                        children: [
                          TextSpan(
                              text: 'Binaya Marahatha 👋',
                              style: TextStyle(
                                  color: Color(0xff541bb5),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/pp.png'),
                    ),
                  ],
                ),
              )
              // search bar
              ,
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search a doctor oe a health issue',
                    hintStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // horizontal nav bar with scroll direction horizontal
              SizedBox(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    NavBar(icon: Icons.local_hospital),
                    NavBar(icon: Icons.local_pharmacy_outlined),
                    NavBar(icon: Icons.medical_services),
                    NavBar(icon: Icons.local_hospital_outlined),
                    NavBar(icon: Icons.bloodtype_outlined),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Appoinment Today',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff541bb5),
                      ),
                    ),
                    const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              // card to show doctor profile
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: _colour,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                // margin: EdgeInsets.all(10.0),

                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30.0,
                          backgroundImage: AssetImage(
                            'images/pp.png',
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Dr. Binaya Marahatha',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Dental Specialist',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xff797DEA),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: Center(
                          child: Expanded(
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.calendar_today,
                                  color: Colors.yellow,
                                  size: 25.0,
                                ),
                                Text(
                                  'Monday 21st May 2020',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Colors.yellow,
                                  size: 25.0,
                                ),
                                Text(
                                  '12:00 PM-1:00 PM',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // map doctor list with card
              const SizedBox(height: 20.0),

              DoctorsList(
                name: 'Dr.Binaya Sharma',
                address: 'Kathmandu',
                department: 'Heart Specialist',
                image: 'images/doctor.jpg',
                rating: 4.0,
                reviews: 56,
              ),
              DoctorsList(
                name: 'Dr.Hari Bahadur',
                address: 'Pokhara',
                department: 'Heart Specialist',
                image: 'images/doctor.jpg',
                rating: 4.7,
                reviews: 28,
              ),
              DoctorsList(
                name: 'Dr.Hari bansha',
                address: 'Chitwan',
                department: 'Heart Specialist',
                image: 'images/doctor.jpg',
                rating: 3.3,
                reviews: 26,
              ),
              DoctorsList(
                name: 'Dr.Madan Bahadur',
                address: 'Dharan',
                department: 'Heart Specialist',
                image: 'images/doctor.jpg',
                rating: 2.0,
                reviews: 16,
              ),
              DoctorsList(
                name: 'Dr.Shyam Sharma',
                address: 'Pairs',
                department: 'Heart Specialist',
                image: 'images/doctor.jpg',
                rating: 3.8,
                reviews: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
