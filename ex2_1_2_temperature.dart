class Temperature {
   double _celsius;

   Temperature(this._celsius);

   double toFahrenheit() {
     return (_celsius * 9 / 5) + 32;
   }

   double toKelvin() {
     return _celsius + 273.15;
   }
}