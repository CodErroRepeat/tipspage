import 'package:flutter/material.dart';
import 'package:tipspage/tipsdatamodel.dart';
import 'package:tipspage/tipsdetails.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static List<String> tipsname =['Alzheimer','Amnesia','Dementia','Anxiety','Depression','Cardio Tips','Hypertension','Diabetes'];
  static List url = ['assets/alzheimer.png',
    'assets/amnesia.png',
    'assets/dementia.png',
    'assets/anxiety.png',
    'assets/depression.png','assets/cardio.png','assets/hypertension.png','assets/diabetes.png',];
  static List tipsdatamodel=[TipsDataModel('ALZHEIMER','assets/alzheimer.png',"SERCVB;KBJHCGXFSRDTTOYPUOU;ILYMFGDN"),
  TipsDataModel("AMNESIA",'assets/amnesia.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("DEMENTIA",'assets/dementia.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("ANXIETY",'assets/anxiety.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("DEPRESSION",'assets/depression.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("CARDIOTIPS ",'assets/cardio.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("HYPERTENSION",'assets/hypertension.png',"setrydtcuyviuboin;omrdytfuyvibunl"),
    TipsDataModel("DIABETES",'assets/diabetes.png',"setrydtcuyviuboin;omrdytfuyvibunl")];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HEALTH TIPS'),),
        body: ListView.builder(
            itemCount: tipsdatamodel.length,
            itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  title: Text(tipsdatamodel[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(tipsdatamodel[index].ImageUrl),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TipsDetail(tipsDataModel:tipsdatamodel[index],)));
                  },
                ),
              );
            }
        )
    );
  }
}