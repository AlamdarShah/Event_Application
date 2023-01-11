import 'package:flutter/material.dart';

 var imageFile;
  // _getFromGallery() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   // if (pickedFile != null) {
  //   //   setState(() {
  //   //     imageFile = pickedFile.path;
  //   //   });
  //   // }
  // }
  
  
Widget navBarFirstItem(){
  var eventName =TextEditingController();
  var eventDescriptions =TextEditingController();
  return  Container(
      color: Colors.blue[900],
      child: Center(   
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Event Name",style: TextStyle(fontSize: 28,color: Colors.white),),
                SizedBox(height: 10,),
               TextField(
                          controller: eventName,
                          autofocus: false,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Event Name",
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 17.0,
                        ),
                         Text("Event Discription",style: TextStyle(fontSize: 28,color: Colors.white),),
SizedBox(height: 10,),
                        TextField(
                          controller: eventDescriptions,
                          keyboardType: TextInputType.text,
                          autofocus: false,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "Event Discription",
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                              
                            ),
                      
                          ),
                          maxLines: 7,
                          minLines: 1,
                        ),
              ],
            ),
          ),
        ),
    
  );
}