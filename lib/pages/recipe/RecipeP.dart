import 'package:debug_entity/models/food-model.dart';
import 'package:debug_entity/services/foodServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecipeP extends StatefulWidget {
  const RecipeP({Key? key}) : super(key: key);

  @override
  _RecipePState createState() => _RecipePState();
}

class _RecipePState extends State<RecipeP> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var foodName = [
      'Vegetables',
      'Meat & Fish',
      'Sweets',
      'Salads',
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 27, top: 10),
                child: const Text(
                  'My Food',
                  style: const TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20, top: 10),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  ))
            ],
          ),
          Container(
            height: screenSize.height * 0.77,
            width: screenSize.width,
            child: ListView.builder(
                itemCount: foodName.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width,
                    child: Column(children: [
                      Container(
                        width: screenSize.width,
                        margin: const EdgeInsets.only(left: 20, top: 12),
                        child: Text(
                          '${foodName[index]}',
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 180, 178, 178)),
                        ),
                      ),
                      Container(
                        height: screenSize.height * 0.25,
                        width: screenSize.width,
                        child: StreamBuilder<List<FoodModel>>(
                            stream: getFoodByCategory(foodName[index]),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final foods = snapshot.data!;
                                return ListView(
                                  children: foods.map(BuildFood).toList(),
                                );
                              }else{
                                return const Text("It seems that we  dont have recipe for this category!",style: TextStyle(
                                  color: Colors.black,
                                ),);
                              }
                            }),
                      )
                    ]),
                  );
                }),
          )
        ]),
      ),
    );
  }

  Widget BuildFood(FoodModel food)=>Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(food.picture!),
        fit:BoxFit.cover,
      ),
    ),
    child: GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20)),
                child: Container(
                  height: 380,
                  width: 280,
                  color: Colors.white,
                  child: Column(children: [
                    Container(
                      width: 280,
                      child: Row(
                        children: [
                          IconButton(
                            color: const Color.fromARGB(
                                255, 228, 169, 81),
                            icon: const Icon(Icons.close),
                            onPressed: (() {}),
                          ),
                          Container(
                            width: 200,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 20),
                      child: const Text(
                        'Description',
                        style: const TextStyle(
                            fontSize: 32,
                            fontWeight:
                            FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 10,
                                left: 15),
                            child: const Text(
                              'Name :',
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            child: Text('${food.title}'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 10,
                                left: 15),
                            child: const Text(
                              'Tags :',
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            child: ListView.builder(
                              scrollDirection:
                              Axis.horizontal,
                              itemCount: food.tags?.length,
                              itemBuilder:
                                  (context, index) {
                                return Container(
                                  margin: const EdgeInsets
                                      .only(
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Text(
                                      '${food.tags![index]}'),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                right: 10,
                                left: 15),
                            child: const Text(
                              'Ingredients :',
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight
                                      .bold,
                                  fontSize: 16),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 40,
                            child: ListView.builder(
                              scrollDirection:
                              Axis.horizontal,
                              itemCount: food.ingredient?.length,
                              itemBuilder:
                                  (context, index) {
                                return Container(
                                  margin: const EdgeInsets
                                      .only(
                                    right: 5,
                                    top: 10,
                                  ),
                                  child: Container(
                                    child: Text(
                                        '${food.ingredient![index]}'),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 20, left: 20),
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 15),
                          child: const Text(
                            'Calories :',
                            style: TextStyle(
                                fontWeight:
                                FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          child: Text('${food.calories}'),
                        ),
                      ]),
                    )
                  ]),
                ),
              );
            });
      },
    ),
    margin: const EdgeInsets.all(10),
    height: MediaQuery.of(context).size.height * 0.12,
    width: MediaQuery.of(context).size.width * 0.4,
    color: Colors.grey,
  );
}