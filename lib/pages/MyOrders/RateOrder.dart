import 'package:flutter/material.dart';

class RateOrderStars extends StatefulWidget {
  const RateOrderStars({super.key});

  @override
  State<RateOrderStars> createState() => _RateOrderStarsState();
}

class _RateOrderStarsState extends State<RateOrderStars> {

  List<int> ratings = [0, 10, 20, 30, 40];

  List<IconData> starState = [
    Icons.star_border,
    Icons.star,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: ratings.map((state) =>
          TextButton(onPressed: (){
            setState(() {
              for(int i = 0; i < ratings.length; i++) {
                if (i <= (state/10)) {
                  ratings[i] = i*10 + 1;
                } else {
                  ratings[i] = i*10;
                }
              }
            });
          },
              child: Icon(starState[state%10]))
      ).toList(),
    );
  }
}


Widget RateOrder(BuildContext context) {
  return Column(
    children: [
      Image.network("https://th.bing.com/th/id/OIP.QVBY30VqTi-tlYt_BaoGqAHaEo?rs=1&pid=ImgDetMain"),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Rate your order:", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      RateOrderStars(),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Comments",
          ),
        ),
      ),
      TextButton(onPressed: (){}, child: Text("Close"), style: TextButton.styleFrom(
          side: BorderSide(
              color: Colors.black,
              width: 1
          )
      ),)
    ],

  );
}