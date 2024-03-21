import 'package:flutter/material.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';

class PostingPage extends StatefulWidget {
  const PostingPage({Key? key});

  @override
  State<PostingPage> createState() => _PostingPageState();
}

class _PostingPageState extends State<PostingPage> {
  final postToList = [
    'Public',
    'Savings Squad',
    'Financial Wizard',
    'Money Master'
  ];

  final postLabel = [
    'Financial Concept',
    'Financial Skills',
    'Investment Knowledge',
    'Insurance and Risk Management',
    'Tax Awareness',
    'Digital Financial Literacy'
  ];

  String? selectedPostToVal = "Public";
  String? selectedPostLabelVal = "Financial Concept";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Write your post here",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(height: 3.0),
                  TextField(
                    minLines: 1,
                    maxLines: 2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffff9973), width: 2.0)),
                        hintText: "Share your thoughts",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15.0)),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_a_photo),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.post_add),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "Select the label of your post",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: DropdownButtonFormField(
                      dropdownColor: Color(0xffd9d9d9),
                      value: selectedPostLabelVal,
                      items: postLabel
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedPostLabelVal = val as String?;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Text(
                    "Select your audience",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: DropdownButtonFormField(
                      dropdownColor: Color(0xffd9d9d9),
                      value: selectedPostToVal,
                      items: postToList
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.normal),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedPostToVal = val as String?;
                        });
                      },
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => SocialMediaHomePage())),
                  );
                },
                child: Text(
                  "Post",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7ecfe0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
