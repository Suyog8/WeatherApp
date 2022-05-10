class WeatherModel
{
  final temp;
  final pressure;
  final humidity;
  final tempMax;
  final tempMin;

  WeatherModel(this.temp,this.pressure,this.humidity,this.tempMax,this.tempMin);

  factory WeatherModel.fromJson(Map<String,dynamic> json)
  {
    return WeatherModel(
      json['temp'],
      json['pressure'],
      json['humidity'],
      json['tempMax'],
      json['tempMin'],
      
    );
  }

}