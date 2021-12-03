import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsList extends StatelessWidget {
  DoctorsList(
      {Key? key,
      required this.name,
      required this.address,
      required this.department,
      required this.rating,
      required this.image,
      required this.reviews})
      : super(key: key);

  Color colour = const Color(0xff541bb5);
  final String name;
  final String address;
  final String department;
  final double rating;
  final String image;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: colour),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        department,
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        address,
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '⭐ $rating',
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        '$reviews Reviews',
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
