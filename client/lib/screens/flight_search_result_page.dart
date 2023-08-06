import 'package:client/models/flight_state.dart';
import 'package:client/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlightSearchResultPage extends ConsumerWidget{
  final FlightState state;

  const FlightSearchResultPage({required this.state,super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            flexibleSpace: ClipRRect(
              borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(50)),
              child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/airplanePicture.jpg"),
                          fit: BoxFit.fill))),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius:
                BorderRadius.only(bottomRight: Radius.circular(50))),
            leading: IconButton(
              onPressed: () {
                ref.read(flightStateProvider.notifier).setToReady();
                Navigator.of(context).pushNamed('/home');
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Best flight found',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
              ),
              const Divider(
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Price: ${state.resp![0]['data']['price']}€',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.red,
                  color: Colors.white30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            state.fromLocation.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            state.resp![0]['data']['departure_city'],
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_date']
                                .substring(0, 10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_date']
                                .substring(11, 16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.flight_takeoff_rounded,
                        size: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            state.toLocation.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            state.resp![0]['data']['destination_city'],
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_arrival']
                                .substring(0, 10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_arrival']
                                .substring(11, 16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.blue,
                  color: Colors.white30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            state.toLocation.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            state.resp![0]['data']['destination_city'],
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_date']
                                .substring(0, 10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_date']
                                .substring(11, 16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.flight_takeoff_rounded,
                        size: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            state.fromLocation.toUpperCase(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            state.resp![0]['data']['departure_city'],
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_arrival']
                                .substring(0, 10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_arrival']
                                .substring(11, 16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Nights in destination: ${state.resp![0]['data']['nights_in_destination']}',
                  style: const TextStyle(fontSize: 15),
                ),
              ),
              const Divider(
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }

}