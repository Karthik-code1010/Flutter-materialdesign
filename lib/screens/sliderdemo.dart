import 'package:flutter/material.dart';

class sliderDemo extends StatefulWidget {
  const sliderDemo({Key? key}) : super(key: key);

  @override
  _sliderDemoState createState() => _sliderDemoState();
}

class _sliderDemoState extends State<sliderDemo> {
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);
  double _sliderValue = 20;
  double _sliderDiscreteValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider demo'),
      ),
      body: Column(
        children: [
          Center(
            child: Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
          ),
          Center(
            child: RangeSlider(
              values: _rangeSliderDiscreteValues,
              min: 0,
              max: 100,
              labels: RangeLabels(
                _rangeSliderDiscreteValues.start.round().toString(),
                _rangeSliderDiscreteValues.end.round().toString(),
              ),
              onChanged: (values) {
                setState(() {
                  _rangeSliderDiscreteValues = values;
                });
              },
            ),
          ),
          Center(
            child: Slider(
              value: _sliderDiscreteValue,
              min: 0,
              max: 100,
              divisions: 5,
              label: _sliderDiscreteValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderDiscreteValue = value;
                });
              },
            ),
          ),
          Center(
            child: RangeSlider(
              values: _rangeSliderDiscreteValues,
              min: 0,
              max: 100,
              divisions: 5,
              labels: RangeLabels(
                _rangeSliderDiscreteValues.start.round().toString(),
                _rangeSliderDiscreteValues.end.round().toString(),
              ),
              onChanged: (values) {
                setState(() {
                  _rangeSliderDiscreteValues = values;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
