import 'package:calator_info/cubit/base_state.dart';
import 'package:calator_info/cubit/introductive/introductive_cubit.dart';
import 'package:calator_info/presentation/models/flags_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class IntroductivePage extends StatefulWidget {
  const IntroductivePage({super.key});

  @override
  State<IntroductivePage> createState() => _IntroductivePageState();
}

class _IntroductivePageState extends State<IntroductivePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<IntroductiveCubit>(context).load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IntroductiveCubit, BaseState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.all(20),
            child: InkWell(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              'Apasa aici pentru a accesa aplicatia.',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    const FlagsBox(),
                    const SizedBox(height: 50),
                    const Text(
                      'Catalog',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '- Firme de transport calatori.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      '- Firme de transport colete.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      '- Firme de transport masini pe platforma.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 50),
                    SvgPicture.asset(
                      color: const Color.fromARGB(255, 220, 242, 194),
                      'lib/assets/images/car.svg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      'Selecteaza judet expeditie sau destinatie.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
              onTap: () => BlocProvider.of<IntroductiveCubit>(context).openLink(),
            ),
          ),
        );
      },
    );
  }
}
