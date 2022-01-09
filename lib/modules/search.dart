
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:sentimental_analyst/models/services.dart';
import 'package:sentimental_analyst/modules/result.dart';
import 'package:sentimental_analyst/shared/components/components.dart';
import 'package:sentimental_analyst/shared/components/palette.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String text = "";
  String sentimentResult = "";
  String sentimentScore = "";
  // final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text("sentiment analyzer",style: TextStyle(fontStyle: FontStyle.italic,),),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        actions: [ IconButton(
          icon: Icon(
            Icons.logout,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height:20,
                ),
                SvgPicture.asset(
                  "assets/search.svg",
                  height: size.height * 0.35,
                  width: size.height * 0.25,
                ),
                const SizedBox(
                  height:20,
                ),
                RoundedInputField(
                  hintText: '             Write any thing',
                  icon: Icons.sentiment_satisfied_alt,
                  onChanged: (value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: RoundedButton(
                      text: 'Analyze Your Text',
                      press: () {
                        Provider.of<ApiGetter>(context, listen: false)
                            .fetchData(text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Result();
                            },
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
