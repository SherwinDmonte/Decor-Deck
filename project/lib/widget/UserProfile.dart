import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  // Sample user data
  String username = "Sherwin DMonte";
  String email = "sherwin.d@master.com";
  String phoneNumber = "1234567890"; // Add phone number

  // Placeholder variables for payment method
  String cardNumber = "**** **** **** 1234";
  String expirationDate = "12/24";
  String cvv = "***";

  // Placeholder variable for the profile picture
  AssetImage profileImage = AssetImage("assets/img/pf1.jpg");

  // Function to handle the profile editing dialog
  Future<void> _showEditProfileDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.photo),
                  title: Text('Change Profile Picture'),
                  onTap: () {
                    // Implement logic to change profile picture
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Change Email'),
                  onTap: () {
                    // Implement logic to change email
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Change Password'),
                  onTap: () {
                    // Implement logic to change password
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Change Phone Number'),
                  onTap: () {
                    // Implement logic to change phone number
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Center the Profile Image with Shadow
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: profileImage,
                ),
              ),

              // Edit Profile Button
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _showEditProfileDialog();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white, // Set text color
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Personal Information
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Username",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        username,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle username edit
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Email",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        email,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle email edit
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        phoneNumber,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle phone number edit
                      },
                    ),
                  ],
                ),
              ),

              // Change Password
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      title: Text(
                        ".....................",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Navigate to change password screen
                      },
                    ),
                  ],
                ),
              ),

              // Payment Method
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(
                        Icons.credit_card,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Card Number",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        cardNumber,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle card number edit
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Expiration Date",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        expirationDate,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle expiration date edit
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.security,
                        color: Colors.black,
                      ),
                      title: Text(
                        "CVV",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        cvv,
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {
                        // Handle CVV edit
                      },
                    ),
                  ],
                ),
              ),

              // Log Out
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Handle log out
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  // primary: Colors.white, // Removed primary
                  shadowColor: Colors.black,
                  elevation: 5,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(width: 8),
                    Text(
                      "Log Out",
                      style: TextStyle(color: Colors.white), // Set text color
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
