import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;
  HotelCard(this.hotelData);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 4,
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        hotelData['picture'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5,
                        right: -15,
                        child: MaterialButton(
                          color: Colors.white,
                          shape: CircleBorder(),
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_outline_rounded,
                            color: Colors.grey[800],
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            hotelData['title'],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '\$' + hotelData['price'],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                hotelData['place'],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Colors.grey[800],
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(hotelData['distance'].toString() +
                                      'km to city')
                                ],
                              ),
                            ],
                          ),
                          Text('/per night'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                size: 17,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                size: 17,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            hotelData['review'].toString() + ' reviews',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
