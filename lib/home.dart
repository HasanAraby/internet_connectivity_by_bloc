import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connectivity_by_bloc/bloc/internet_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<InternetBloc, InternetState>(
        builder: (context, state) {
          if (state is ConnectedState) {
            return customText(state.message);
          } else if (state is NotConnectedState) {
            return customText(state.message);
          }
          return customText('dummy');
        },
      ),
    );
  }
}

Widget customText(String txt) {
  return Center(
    child: Text(
      txt,
      style: const TextStyle(fontSize: 30),
    ),
  );
}
