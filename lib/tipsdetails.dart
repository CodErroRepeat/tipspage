import 'package:flutter/material.dart';
import '../../../Documents/granny_go_flutter/lib/tipspage/tipsdatamodel.dart';

class TipsDetail extends StatelessWidget {
  final TipsDataModel tipsDataModel;

  const TipsDetail({Key? key, required this.tipsDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tipsDataModel.name),),
      body: Column(
        children: <Widget>[
          Text("ALZHEIMER-INTRO\n",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Container(
            child: Text("Alzheimer’s symptoms worsen as the disease progresses, which brings new challenges for caregivers. Understanding the stages of Alzheimer’s and their associated symptoms can help people plan ahead.Alzheimer’s disease consists of three stages: mild, moderate, and severe.\n"),
          ),
          Text("ALZHEIMER-MILD",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Container(
            child: Text("People who have mild or early stage Alzheimer’s disease can still function independently. They can continue participating in professional and social activities.During this stage, people may have difficulty concentrating or remembering recent events. They may forget certain words or names."),              ),
        ],
      ),
    );
  }
}