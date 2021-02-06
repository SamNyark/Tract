import "package:flutter/material.dart";

  Widget homeContainer(String name, String image) {
    return Container(
      height: 180,
      width: 200,
      child: Column(
        children: [
          Image.asset(image),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
      ),
    );
  }

