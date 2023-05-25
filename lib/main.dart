import 'package:flutter/material.dart';
import 'package:hyperhire_assessment/views/post_detail.dart';
import 'package:hyperhire_assessment/views/post_detail_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const Root());
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveSizer(builder: (context, orientation, screenType) {

        return
    
     MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) =>  PostDetailViewModel()),
    
    ],
    child:
  
    
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Post Detail",
          theme: ThemeData(primaryColor: Colors.black),
          home: const PostDetailView(),
        )
    
    );
    
      });
  }
}
