
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override



  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController  _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _scrollController = ScrollController();
  }
  Widget build(BuildContext context) {
    return Container(

      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.image,size: 24, color: Colors.black),
                      Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.notifications),
                        ],
                      )

                    ],

                  )
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,top: 25),
                    child: Text('Popular Places',style: TextStyle(fontSize: 30),),
                  )
                ],
              ),
              SizedBox(height: 20,
              ),
              Container(
                height: 180,
                child: Stack(
                  children: [
                Positioned(
                child: Container(
                height: 180,
                  child: PageView.builder(
                      controller: PageController(viewportFraction: 0.8),
                      itemCount: 10,
                      itemBuilder: (_, i){
                        return Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(right: 10),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(

                                image: AssetImage('asset/images/img_1.png'),
                                fit: BoxFit.fill,
                              )
                          ),

                        );
                      } ),



                  )

               )],


        ),
    ),

                Expanded(child: NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                  return [SliverAppBar(
                    pinned: true,
                    backgroundColor: Colors.white,
                    bottom:PreferredSize(
                      preferredSize: Size.fromHeight(50),

                      child: Container(
                        margin: EdgeInsets.only(bottom: 20,left: 10),
                        child: TabBar(
                          indicatorPadding: EdgeInsets.all(0),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelPadding: EdgeInsets.only(right: 10),
                          controller: _tabController,
                          isScrollable: true,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 7,
                                offset: Offset(0,0),
                              )
                            ]
                          ),
                          tabs: [
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Mumbai',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 7,
                                    offset: Offset(0,0),

                                  )
                                ]
                              ),
                            ),
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Lucknow',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 7,
                                      offset: Offset(0,0),

                                    )
                                  ]
                              ),
                            ),
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Delhi',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 7,
                                      offset: Offset(0,0),

                                    )
                                  ]
                              ),
                            ),
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Hydrabad',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.purple,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 7,
                                      offset: Offset(0,0),

                                    )
                                  ]
                              ),
                            ),
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Varansi',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepOrangeAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 7,
                                      offset: Offset(0,0),

                                    )
                                  ]
                              ),
                            ),
                            Container(
                              width:100,
                              height: 50,
                              child: Text('Goa',style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 7,
                                      offset: Offset(0,0),

                                    )
                                  ]
                                 )
                            )
                     ])
                     ),
                    ),
                    )
                    ];
                  },
                    body: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(itemBuilder: (_,i){
                      return  Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white70,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(0,0),
                                color: Colors.grey.withOpacity(0.2),
                              )
                            ]

                          ),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(

                                  width: 90,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage('asset/images/img_1.png'),
                                    )
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star,size: 24, color: Colors.green,),
                                        SizedBox(width: 5,),
                                        Text('4.5',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w100,color: Colors.red),)
                                      ],
                                    ),
                                    Text('Restourent',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                    Text('text',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.cyan),),
                                    Container(
                                      height: 15,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: Colors.blue,
                                      ),
                                      child: Text('Love',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.white),

                                      ),
                                      alignment: Alignment.center,
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      );

                    }),

                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),
                        title: Text('Content'),

                      ),



                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),

                        title: Text('Content'),

                      ),



                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),
                        title: Text('Content'),

                      ),



                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),
                        title: Text('Content'),

                      ),



                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),
                        title: Text('Content'),

                      ),



                    ),
                    Material(
                      child: ListTile(
                        leading: CircleAvatar( backgroundColor: Colors.grey,),
                        title: Text('Content'),


                      ),



                    ),
                  ],
                )

              ))

              
            ],



    ),

        )
    )
    );
  }
}
