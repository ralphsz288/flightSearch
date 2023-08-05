import 'package:client/models/flight_state.dart';
import 'package:client/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  RangeValues _rangeValues = const RangeValues(1, 50);
  late String fromLocation;
  late String toLocation;

  @override
  Widget build(BuildContext context) {
    FlightState state;
    final viewState = ref.watch(flightStateProvider);

    return viewState.when(
        loading: () => _loading(),
        ready: () => _body(),
        error: () => _error(),
        completed: (FlightState state) => _completed(state));
  }

  Widget _loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _error() {
    return const Scaffold(
      body: Center(
          child: Scaffold(
        body: Center(
          child: Text('There was an error'),
        ),
      )),
    );
  }

  Widget _completed(FlightState state) {
    return WillPopScope(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50)),
              child: Container(
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/airplanePicture.jpg"),
                    fit: BoxFit.fill
                  )
                )
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
            ),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
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
                            state.resp![0]['data']['departure_date'].substring(0,10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_date'].substring(11,16),
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
                            state.resp![0]['data']['departure_arrival'].substring(0,10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['departure_arrival'].substring(11,16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),

                    ],

                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Nights in destination: ${state.resp![0]['data']['nights_in_destination']}',style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
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
                            state.resp![0]['data']['return_date'].substring(0,10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_date'].substring(11,16),
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
                            state.resp![0]['data']['return_arrival'].substring(0,10),
                            style: const TextStyle(fontSize: 10),
                          ),
                          Text(
                            state.resp![0]['data']['return_arrival'].substring(11,16),
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),

                    ],

                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                    'Price: ${state.resp![0]['data']['price']}€',style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w500),
                ),
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

  Widget _body({FlightState? state}) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50)),
            child: Container(
                decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/airplanePicture.jpg"),
                        fit: BoxFit.fill
                    )
                )
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
          ),
          leading: IconButton(
            onPressed: () {
              ref.read(flightStateProvider.notifier).setToReady();
              Navigator.of(context).pushNamed('/home');
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Flight Search',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'From:',
                    hintText: 'Enter iatacode',
                    prefixIcon: Icon(Icons.flight_takeoff_outlined),
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    fromLocation = value;
                  });
                },
                validator: (value) {
                  return value!.isEmpty ? 'Please enter username' : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'To:',
                    hintText: 'Enter iatacode',
                    prefixIcon: Icon(Icons.flight_land_outlined),
                    border: OutlineInputBorder()),
                onChanged: (value) {
                  setState(() {
                    toLocation = value;
                  });
                },
                validator: (value) {
                  return value!.isEmpty ? 'Please enter username' : null;
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                'How many days would you like to spend in your destination?',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: RangeSlider(
                  values: _rangeValues,
                  max: 50,
                  divisions: 50,
                  labels: RangeLabels(
                    _rangeValues.start.round().toString(),
                    _rangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _rangeValues = values;
                    });
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('search flights'),
        onPressed: () async {
          await ref.read(flightStateProvider.notifier).init(
              fromLocation,
              toLocation,
              _rangeValues.start.toString(),
              _rangeValues.end.toString());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
