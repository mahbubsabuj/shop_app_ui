import 'package:flutter/material.dart';

Widget categoryItem(String type, Icon icon) {
  return Padding(
    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
    child: Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Center(
            child: icon,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(type),
      ],
    ),
  );
}

Widget product(String productTitle, String productCategory) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          "https://images.pexels.com/photos/1032110/pexels-photo-1032110.jpeg?cs=srgb&dl=pexels-jordan-hyde-1032110.jpg&fm=jpg",
          height: 250,
          width: 150,
          fit: BoxFit.fill,
        ),
      ),
      Container(
        height: 20,
        width: 170,
        child: ListTile(
          title: Text(
            productTitle,
            textAlign: TextAlign.start,
          ),
          subtitle: Text(
            productCategory,
            textAlign: TextAlign.start,
          ),
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Container(
        padding: EdgeInsets.fromLTRB(18, 5, 0, 12),
        height: 50,
        width: 170,
        child: Text(
          "\$755",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color.fromRGBO(0, 197, 105, 1),
          ),
        ),
      ),
    ],
  );
}
