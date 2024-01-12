import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class CalendarPage extends StatelessWidget { 
  @override 
  Widget build (BuildContext context){ 
    return Scaffold( 
      appBar:MyAppBar(),
      body:  SingleChildScrollView(child : Column ( 
      
        children : [ 
          PeriodSection(),
        ]
      ))

    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget { 
   Size get preferredSize =>  new Size.fromHeight(50);
   @override
  Widget build (BuildContext context){ 
    return AppBar( 
      leading:  
        IconButton( 
            icon :Icon (  
                    Icons.arrow_back,  
                    color: Colors.grey[800] ,
                    size: 20,),
          onPressed: (){ 
            Navigator.pop(context);
          },
    ), 
      backgroundColor: Colors.white,
    );
  }

}