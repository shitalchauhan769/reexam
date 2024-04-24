import 'package:e_commersc_exem/until/globel.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Row(
                              children: [],
                            ),
                            Container(
                              child: Image(
                                image: AssetImage("${m1['image']}"),
                                fit: BoxFit.cover,
                                height: 250,
                                width: 500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "${m1['name']}",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "${m1['rating']}",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Amazon.in: Online Shopping India - Buy mobiles, laptops, cameras, books, watches, apparel, shoes and e-Gift Cards. Free Shipping & Cash on Delivery ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                         height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          alignment: Alignment.center,
                          child: Text("1TB",style: TextStyle( fontSize: 18,color: Colors.white,fontWeight:  FontWeight.bold)),
                        )
                      ],
                    ),
                    SizedBox(width: 5,),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300,
                          ),
                          alignment: Alignment.center,
                          child: Text("825GB",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),
                        )
                      ],
                    ),
                    SizedBox(width: 5,),
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300,
                          ),
                          alignment: Alignment.center,
                          child: Text("GB",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.black)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Divider(),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("\$ ${m1['price']}",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red
                      ),
                       alignment: Alignment.center,
                       child: Text("% on sale",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                FloatingActionButton.extended(onPressed: () {
                  CateList.add(m1);
                  Navigator.pop(context);
                }, label: Text("add to cate",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
