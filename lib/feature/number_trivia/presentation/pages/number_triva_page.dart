import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/utils/loading_state_enum.dart';
import 'package:flutter_tdd/feature/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:flutter_tdd/feature/number_trivia/presentation/widgets/message_display.dart';
import 'package:flutter_tdd/injection_container.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class NumberTrivaPage extends StatefulWidget {
  const NumberTrivaPage({super.key});

  @override
  State<NumberTrivaPage> createState() => _NumberTrivaPageState();
}

class _NumberTrivaPageState extends State<NumberTrivaPage> {
  late final NumberTriviaBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "TDD ARCHITECTURE APP",
        style: TextStyle(
          color: Colors.black,
          fontFamily: "GameFamily",
        ),
      )),
      body: BlocProvider.value(
        value: bloc,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                    builder: (BuildContext context, NumberTriviaState state) {
                      if (state.state == LoadingState.EMPTY) {
                        return MessageDisplay(
                            message: "Start searching!", color: Colors.grey);
                      } else if (state.state == LoadingState.ERROR) {
                        return MessageDisplay(
                            message: state.errorMessage,
                            color: Colors.redAccent);
                      } else if (state.state == LoadingState.LOADING) {
                        return LoadingAnimationWidget.staggeredDotsWave(
                          color: Colors.black,
                          size: 200,
                        );
                      }
                      return MessageDisplay(
                          message: state.text, color: Colors.greenAccent);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TrivalControlState(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  void initState() {
    bloc = sl<NumberTriviaBloc>();
    super.initState();
  }
}

class TrivalControlState extends StatefulWidget {
  const TrivalControlState({
    super.key,
  });

  @override
  State<TrivalControlState> createState() => _TrivalControlStateState();
}

class _TrivalControlStateState extends State<TrivalControlState> {
  String inputText = "";
  bool isError = false;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NeumorphicButton(
          onTap: _dipatchConsern,
          bottomRightShadowBlurRadius: 15,
          bottomRightShadowSpreadRadius: 1,
          backgroundColor: Colors.grey.shade300,
          topLeftShadowBlurRadius: 15,
          topLeftShadowSpreadRadius: 1,
          topLeftShadowColor: Colors.white,
          bottomRightShadowColor: Colors.grey.shade500,
          height: 80,
          width: double.infinity,
          bottomRightOffset: const Offset(4, 4),
          topLeftOffset: const Offset(-4, -4),
          child: Center(
            child: TextField(
              controller: controller,
              onChanged: (value) {
                inputText = value;
              },
              decoration: InputDecoration(
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide.none),
                  hintText:
                      isError ? "Please enter a number..." : "Input a number!",
                  hintStyle: TextStyle(
                      color: isError ? Colors.redAccent : Colors.grey)),
              keyboardType:
                  const TextInputType.numberWithOptions(signed: false),
              style: const TextStyle(fontFamily: "GameFamily", fontSize: 23),
              keyboardAppearance: Brightness.light,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: NeumorphicButton(
                onTap: _dipatchConsern,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.grey.shade300,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade500,
                height: 56,
                width: 150,
                bottomRightOffset: const Offset(4, 4),
                topLeftOffset: const Offset(-4, -4),
                child: const Center(
                    child: Text(
                  "Search",
                  style: TextStyle(fontFamily: "GameFamily"),
                )),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: NeumorphicButton(
                onTap: _dipatchRandom,
                bottomRightShadowBlurRadius: 15,
                bottomRightShadowSpreadRadius: 1,
                borderWidth: 5,
                backgroundColor: Colors.grey.shade300,
                topLeftShadowBlurRadius: 15,
                topLeftShadowSpreadRadius: 1,
                topLeftShadowColor: Colors.white,
                bottomRightShadowColor: Colors.grey.shade500,
                height: 56,
                width: 150,
                bottomRightOffset: const Offset(4, 4),
                topLeftOffset: const Offset(-4, -4),
                child: const Center(
                    child: Text(
                  "Random",
                  style: TextStyle(fontFamily: "GameFamily"),
                )),
              ),
            ),
          ],
        )
      ],
    );
  }

  void _dipatchConsern() {
    if (controller.text.isEmpty) {
      setState(() {
        isError = true;
      });
    } else {
      setState(() {
        isError = false;
        controller.clear();
        BlocProvider.of<NumberTriviaBloc>(context)
            .add(NumberTriviaEvent.getConcreteNumber(inputText));
      });
    }
  }

  void _dipatchRandom() {
    BlocProvider.of<NumberTriviaBloc>(context)
        .add(const NumberTriviaEvent.getRandomNumber());
  }
}
