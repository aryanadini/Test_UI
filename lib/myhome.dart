import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(4.0),
              child: Container(
                color: Colors.grey.shade500,
                height: 1,
              )),
          title: Text(
            "Railway Exams",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlVS6TopxoGR6pZqHUeOiw2JtC5M10TM0mWQ&s",
            fit: BoxFit.cover,
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16.0), // Adjust as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey.shade500,
                  width: 1.0,
                ), // Border color and width
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0), // Adjust padding as needed
                child: Icon(Icons.search, color: Colors.grey.shade200),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildRowWithImagesAndText(context),
              //  _buildRowWithImagesAndText(context),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              backgroundColor: Colors.grey.shade900,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.self_improvement_outlined,
                    color: Colors.white,
                  ),
                  label: 'Self Study',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  label: 'Me',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.shade500,
              onTap: _onItemTapped,
            ),
            // Add the horizontal line on top of the selected icon
            Positioned(
              //bottom: 0,
              top: 0,
              left: _selectedIndex == 0
                  ? 0
                  : _selectedIndex == 1
                      ? MediaQuery.of(context).size.width / 3
                      : MediaQuery.of(context).size.width / 1.5,
              child: Container(
                height: 3,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }

  Widget _buildRowWithImagesAndText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            // width: 420,
            color: Colors.grey.shade900,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Mcyb-2D34ubnIZDeh9gQ6jmbwX4XW0mPOg&s',
                                width: 250,
                              )),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  border:
                                      Border.all(color: Colors.grey.shade500),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text('हा',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'FULL SYLLABUS COMPLETION ',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.blue.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Abhyaas-Railways Group D',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 14,
                                color: Colors.grey.shade500,
                              ),
                              SizedBox(width: 8),
                              Text('Started on 5 Jan 2022',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade500,
                                  )),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  size: 14, color: Colors.grey.shade500),
                              SizedBox(width: 8),
                              Text('Morning classes',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade500,
                                  )),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.person,
                                  size: 14, color: Colors.grey.shade500),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'M s Mustafaa, Deepak kumar,',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey.shade500),
                                  ),
                                  Text(
                                    'Sharma, Samar Pratap Singh, ...',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3Mcyb-2D34ubnIZDeh9gQ6jmbwX4XW0mPOg&s',
                                width: 250,
                              )),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade900,
                                  border:
                                      Border.all(color: Colors.grey.shade500),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text('हा',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'FULL SYLLABUS COMPLETION ',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.blue.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Abhyaas-Railways Group D',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 14,
                                color: Colors.grey.shade500,
                              ),
                              SizedBox(width: 8),
                              Text('Started on 5 Jan 2022',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade500,
                                  )),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  size: 14, color: Colors.grey.shade500),
                              SizedBox(width: 8),
                              Text('Morning classes',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey.shade500,
                                  )),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.person,
                                  size: 14, color: Colors.grey.shade500),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'M s Mustafaa, Deepak kumar,',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey.shade500),
                                  ),
                                  Text(
                                    'Sharma, Samar Pratap Singh, ...',
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Action when the button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent.shade400,
                    // Green-blue mixed color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5.0), // More rounded corners
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 60.0),
                  ),
                  child: Text(
                    'View subscription plans',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Add space between the button and the text
                Text(
                  'SEE HOW SUBSCRIPTION WORKS >',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold // Adjust color if needed

                      ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 370,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              // borderRadius: BorderRadius.circular(2.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Meet our',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        TextButton(
                          onPressed: () {
                            // Add your onPressed function here
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.grey.shade200,
                            textStyle: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('SEE ALL'),
                              SizedBox(width: 5), // Adjust the width as needed
                              Icon(
                                Icons.arrow_forward_ios,
                                // Choose the appropriate icon
                                size: 12, // Adjust the size as needed
                                color: Colors.grey
                                    .shade200, // Match the icon color to the text
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      'exceptional educators',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1BUkIEvOMX5cACqrrsaIUSo2yd7B-HxntPw&s',
                      // Replace with your image URL or asset path
                      width: 100.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saurabh Malik',
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                        ),
                        Text(
                          'Quantitative Aptitude',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          '72k followers',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              //borderRadius: BorderRadius.circular(1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Courses on all subjects',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your onPressed function here
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.grey.shade200,
                        textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('SEE ALL'),
                          SizedBox(width: 5), // Adjust the width as needed
                          Icon(
                            Icons.arrow_forward_ios,
                            // Choose the appropriate icon
                            size: 12, // Adjust the size as needed
                            color: Colors.grey
                                .shade200, // Match the icon color to the text
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1BUkIEvOMX5cACqrrsaIUSo2yd7B-HxntPw&s',
                    // Replace with your image URL or asset path
                    width: 190,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text('ही', style: TextStyle(fontSize: 10)),
                    ),
                    // Text(
                    //   'ही',
                    //   style: TextStyle(
                    //     fontSize: 16.0,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    SizedBox(width: 16.0),
                    Text(
                      'GENERAL AWARENESS',
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue.shade500,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Text(
                  'Target: Course on GK for',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Railway Group D',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Saurabh Malik',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[500],
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.grey.shade500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Starts at ₹1000,00/month',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    //  SizedBox(width: 5,),
                    ElevatedButton(
                      onPressed: () {
                        // Action when the button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent.shade400,
                        // Green-blue mixed color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5.0), // More rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 5.0),
                      ),
                      child: Text(
                        'View subscription plans',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
