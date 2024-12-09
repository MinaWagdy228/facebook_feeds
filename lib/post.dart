import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: Colors.black, thickness: 1),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 10),
            Image.asset("assets/Images/route_User.png"),
            const SizedBox(width: 5),
            Column(
              children: [
                const Text("Route",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Text("8h"),
                    const SizedBox(width: 5),
                    Image.asset("assets/Images/Earth.png")
                  ],
                )
              ],
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width * 0.65),
            Image.asset("assets/Images/three dots.png")
          ],
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/Images/Route.png")),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Image.asset("assets/Images/icon.png"),
            const SizedBox(width: 10),
            Image.asset("assets/Images/comment.png"),
            const SizedBox(width: 10),
            Image.asset("assets/Images/share.png"),
            const SizedBox(width: 10),
            Image.asset("assets/Images/bookmark.png"),
          ],
        ),
      ],
    );
  }
}
