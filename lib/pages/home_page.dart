import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: AppBar(
            backgroundColor: Color(0xfff8f8f8),
            elevation: 0.0,
            leading: Icon(Icons.short_text, color: Colors.black87, size: 30),
            actions: [
              Icon(Icons.notifications_none, size: 30, color: Colors.black87)
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Find Your',
                          style: TextStyle(fontSize: 40, color: Colors.black45),
                        ),
                        Text(
                          'Mentor',
                          style: TextStyle(fontSize: 40, color: Colors.black87),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 310,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    fillColor: Colors.grey[300],
                                    hintText: 'Search',
                                    prefixIcon: Icon(Icons.search),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10)))),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Center(
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 34,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Experts',
                        style: TextStyle(color: Colors.black87, fontSize: 22),
                      ),
                      SizedBox(height: 10),
                      _singleExpert('https://cdn.pixabay.com/photo/2019/06/19/13/02/portrait-4284837_960_720.jpg','Wanda','Fluter developer','2','20'),
                      _singleExpert('https://cdn.pixabay.com/photo/2019/06/19/13/02/portrait-4284837_960_720.jpg','Wanda','Fluter developer','2','20'),
                      _singleExpert('https://cdn.pixabay.com/photo/2019/06/19/13/02/portrait-4284837_960_720.jpg','Wanda','Fluter developer','2','20'),
                      _singleExpert('https://cdn.pixabay.com/photo/2019/06/19/13/02/portrait-4284837_960_720.jpg','Wanda','Fluter developer','2','20'),
                    ],
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
  Widget _singleExpert(String image,String name,String work,String hour,String price){
    return Padding(
      padding: const EdgeInsets.only(top:3.0,bottom: 10),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 90,
            width: 271,
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 45),
                      Expanded(
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                Text('Rating'),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15)
                              ],
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(work,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '$hour hour /\$$price',
                          style: TextStyle(color: Colors.green[400],fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
