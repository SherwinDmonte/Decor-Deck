import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: UserProfile(),
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String username = "Sherwin DMonte";
  String email = "sherwin.d@master.com";
  String phoneNumber = "1234567890";
  String cardNumber = "**** **** **** 1234";
  String expirationDate = "12/24";
  String cvv = "***";
  AssetImage profileImage = AssetImage("assets/img/pf1.jpg");

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
                    Navigator.of(context).pop();
                    _navigateToChangeProfilePicture();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Change Email'),
                  onTap: () {
                    _showChangeEmailDialog();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('Change Password'),
                  onTap: () {
                    _showChangePasswordDialog();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Change Phone Number'),
                  onTap: () {
                    _showChangePhoneNumberDialog();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _navigateToChangeProfilePicture() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChangeProfilePictureScreen(profileImage),
      ),
    );
  }

  Future<void> _showChangeEmailDialog() async {
    String newEmail = email;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Email'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  newEmail = value;
                },
                decoration: InputDecoration(
                  labelText: 'New Email',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  email = newEmail;
                });
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showChangePasswordDialog() async {
    String newPassword = "";

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  newPassword = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                print('New Password: $newPassword');
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showChangePhoneNumberDialog() async {
    String newPhoneNumber = phoneNumber;

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Phone Number'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  newPhoneNumber = value;
                },
                decoration: InputDecoration(
                  labelText: 'New Phone Number',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  phoneNumber = newPhoneNumber;
                });
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
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
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _showEditProfileDialog();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation: 5, // Add elevation here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
                        _showChangePasswordDialog();
                      },
                    ),
                  ],
                ),
              ),
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
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  primary: Colors.white,
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
                    Text("Log Out"),
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

class ChangeProfilePictureScreen extends StatelessWidget {
  final AssetImage previousProfileImage;

  ChangeProfilePictureScreen(this.previousProfileImage);

  void _openGallery(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      // Do something with the picked image
      // For now, you can print its path
      print('Image path: ${pickedImage.path}');
    } else {
      print('No image selected.');
    }
  }

  void _openCamera(BuildContext context) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.camera);

    if (pickedImage != null) {
      // Do something with the picked image
      // For now, you can print its path
      print('Image path: ${pickedImage.path}');
    } else {
      print('No image selected.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Profile Picture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: previousProfileImage,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _openGallery(context);
              },
              child: Text('Select from Gallery'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _openCamera(context);
              },
              child: Text('Click Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
