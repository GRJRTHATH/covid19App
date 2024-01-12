import 'package:flutter/material.dart';

class CountriesListScreen extends StatefulWidget {
  const CountriesListScreen({Key? key}) : super(key: key);
  @override
  _CountriesListScreenState createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  @override
  TextEditingController searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    hintText: 'Search with country name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                  if(snapshot.hasData){
                    return Text('Loading');

                  }else{
                  return ListView.builder(itemBuilder: (context, index) {
                    return Column(
                      children: [],
                    }
                    );
                  });
              ),
            )
          ],
        ),
      ),
    );
  }
}
