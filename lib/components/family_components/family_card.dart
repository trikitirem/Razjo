import 'package:flutter/material.dart';

class FamilyCard extends StatelessWidget {
  FamilyCard({this.colors, this.name, this.appointment, this.onTap});
  final String name;
  final List<Color> colors;
  final String appointment;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, bottom: 16, left: 24, right: 16),
                  child: Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(
                              "https://samequizy.pl/wp-content/uploads/2016/03/filing_images_27b2790a29f1.jpg"),
                        )),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 19,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.pending_actions_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " - $appointment",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}