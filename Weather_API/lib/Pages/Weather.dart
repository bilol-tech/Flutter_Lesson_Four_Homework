import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:url_launcher/url_launcher_string.dart';
import 'package:weather_api/Model/Model.dart';
import 'package:weather_api/Pages/AddCountry.dart';

import '../Repository/get_information.dart';

class HomePage extends StatefulWidget {
  final String name;

  const HomePage({Key? key, this.name = "Bilol"}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetInformationRepository api = GetInformationRepository();
  Name? dataName;
  bool isLoading = true;

  Future<void> getInformation() async {
    isLoading = true;
    setState(() {});
     var data = await api.getInformation(name: widget.name);
     dataName=Name.fromJson(data);
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getInformation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Name: ${widget.name}"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Center(
            child: Wrap(
              children: [
            Container(
            padding:
            EdgeInsets.only(left: 100, right: 100, top: 20, bottom: 20),
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.lightBlue),
            child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                      dataName?.name ?? ' ', style: GoogleFonts.raleway(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    dataName?.gender ?? ' ', style: GoogleFonts.raleway(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    dataName?.count.toString() ?? ' ', style: GoogleFonts.raleway(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
            ),),
        ],
            ),
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddName()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}