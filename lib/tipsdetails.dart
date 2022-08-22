import 'package:flutter/material.dart';
import 'tipsdatamodel.dart';

class TipsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tipsDataModel.name),),
      body: Column(
        children: <Widget>[
          Text(tipsDataModel.name+"-INTRO\n",style:TextStyle(fontSize:15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Container(
            child: Text("Alzheimer’s symptoms worsen as the disease progresses, which brings new challenges for caregivers. Understanding the stages of Alzheimer’s and their associated symptoms can help people plan ahead.Alzheimer’s disease consists of three stages: mild, moderate, and severe.\n"),
          ),
          Text("Description",style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,decoration: TextDecoration.underline),),
          Container(
            child: Text(tipsDataModel.desc)
          )
        ],
      ),
    );
  }

  final TipsDataModel tipsDataModel;

  const TipsDetail({Key? key, required this.tipsDataModel}) : super(key: key);
}