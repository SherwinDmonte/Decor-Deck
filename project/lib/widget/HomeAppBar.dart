import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30, color: Colors.black),


          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "DECOR DECK SHOP",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Spacer(),
          Badge(
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(7),
            label: Text(
              "7",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications,
            size:30,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
