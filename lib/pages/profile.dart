/*
  Authors : flutter_ninja (Flutter Ninja)
  Website : https://codecanyon.net/user/flutter_ninja/
  App Name : JobFinder Flutter Template
  This App Template Source code is licensed as per the
  terms found in the Website https://codecanyon.net/licenses/standard/
  Copyright and Good Faith Purchasers © 2022-present flutter_ninja.
*/
import 'package:flutter/material.dart';
import 'package:jobfinder/widget/navbar.dart';
import '../components/styles.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectID = 1;
  String dropdownValueDay = '2';
  String dropdownValueMonth = 'July';
  String dropdownValueYear = '1997';
  String dropdownValueCountry = 'India';
  String dropdownValueZip = '85001';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavBar(),
        extendBodyBehindAppBar: true,
        backgroundColor: backgroundColor,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   iconTheme: const IconThemeData(color: Colors.white),
        //   title: const Text('Profile'),
        //   centerTitle: true,
        //   elevation: 0,
        // ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _buildHeader(),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackHeadingSmall('Basic Informations'.toUpperCase()),
              GestureDetector(onTap: () {}, child: appcolorText('Edit'))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Column(
              children: [
                textFieldNo('Full Name'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    greyTextSmall('Gender'),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildSelect('Male', 1),
                        _buildSelect('Female', 2),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    greyTextSmall('Date of Birth'),
                    Row(
                      children: [
                        Expanded(
                            child: DropdownButton<String>(
                          value: dropdownValueDay,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.black87),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueDay = newValue!;
                            });
                          },
                          items: <String>['1', '2', '3', '4']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                        const SizedBox(width: 10),
                        Expanded(
                            child: DropdownButton<String>(
                          value: dropdownValueMonth,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.black87),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueMonth = newValue!;
                            });
                          },
                          items: <String>['January', 'March', 'April', 'July']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                        const SizedBox(width: 10),
                        Expanded(
                            child: DropdownButton<String>(
                          value: dropdownValueYear,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.black87),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueYear = newValue!;
                            });
                          },
                          items: <String>['1994', '1995', '1996', '1997']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                      ],
                    ),
                  ],
                ),
                textFieldNo('Phone Number'),
                textFieldNo('Email Address'),
                const SizedBox(height: 10),
              ],
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackHeadingSmall('Location'.toUpperCase()),
              GestureDetector(onTap: () {}, child: appcolorText('Edit'))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Column(
              children: [
                textFieldNo('Home Address'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: greyTextSmall('Country')),
                        const SizedBox(width: 10),
                        Expanded(child: greyTextSmall('Zip Code'))
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: DropdownButton<String>(
                          value: dropdownValueCountry,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.black87),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueCountry = newValue!;
                            });
                          },
                          items: <String>['India', 'USA', 'Florida', 'Canada']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                        const SizedBox(width: 10),
                        Expanded(
                            child: DropdownButton<String>(
                          value: dropdownValueZip,
                          icon: const Icon(Icons.arrow_drop_down),
                          style: const TextStyle(color: Colors.black87),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValueZip = newValue!;
                            });
                          },
                          items: <String>['85003', '85004', '85001', '85002']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackHeadingSmall('Education'.toUpperCase()),
              GestureDetector(onTap: () {}, child: appcolorText('Edit'))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Column(
              children: [
                textFieldNo('Collage'),
                textFieldNo('High School Degree'),
                textFieldNo('Higher Secondary Education'),
                const SizedBox(height: 10),
              ],
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackHeadingSmall('Skills'.toUpperCase()),
              GestureDetector(onTap: () {}, child: appcolorText('Edit'))
            ],
          ),
        ),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Wrap(
              children: [
                _buildSkils('Flutter'),
                _buildSkils('Ionic'),
                _buildSkils('Ionic'),
                _buildSkils('Ionic'),
                _buildSkils('Ionic'),
                _buildSkils('Ionic'),
                _buildSkils('Ionic'),
              ],
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              blackHeadingSmall('My Resume'.toUpperCase()),
              GestureDetector(onTap: () {}, child: appcolorText('Edit'))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: Row(
              children: [
                Image.asset('assets/images/c3.png',
                    width: 40, height: 40, color: Colors.black38),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText('Mark Velor'),
                      greyTextSmall('Updated on 22 June 2023')
                    ],
                  ),
                ),
                const Icon(Icons.more_vert, size: 18, color: Colors.black38)
              ],
            )),
        const SizedBox(height: 20)
      ],
    ));
  }

  Widget _buildHeader() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[appColor2, appColor]),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.menu, color: Colors.white)),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'medium',
                          fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(width: 40)
              ],
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/p2.jpg'),
              radius: 40,
            ),
            const SizedBox(height: 8),
            const Text(
              'John Snow',
              style: TextStyle(
                  fontSize: 18, fontFamily: 'medium', color: Colors.white),
            ),
            const SizedBox(height: 8),
            const Text(
              'admin@flutter_ninja.com',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: backgroundColor,
                      shadowColor: Colors.black38,
                      onPrimary: Colors.black,
                      elevation: 0,
                      shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      )),
                      padding: const EdgeInsets.all(0)),
                  child: greyTextSmall('My Resume'.toUpperCase())),
            ),
          ],
        ));
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: selectID == id ? appColor : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(title,
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 14,
                color: selectID == id ? Colors.white : Colors.black54)),
      ),
    );
  }

  Widget _buildSkils(val) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[appColor2, appColor]),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: btnText(val),
    );
  }
}
