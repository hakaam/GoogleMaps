import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class GooglePlacesScreen extends StatefulWidget {
  const GooglePlacesScreen({Key? key}) : super(key: key);

  @override
  State<GooglePlacesScreen> createState() => _GooglePlacesScreenState();
}

class _GooglePlacesScreenState extends State<GooglePlacesScreen> {
  TextEditingController _controller=TextEditingController();
  var uuid=Uuid();
  String _sessionToken='123444';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      onChange();

    });
  }

  void onChange(){
    if(_sessionToken == null){
      setState(() {
        _sessionToken=uuid.v4();


      });


    }
    getSuggestion(_controller.text);



  }
  void getSuggestion(String input) async{
    String kplaces_API_Key='AIzaSyCPyntJBk1Pq9opgOJx_9-pt3YNkbhGPHA';
    




  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Google Search Places APi'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search places with name'


              ),


            )





          ],


        ),
      ),
    );
  }
}
