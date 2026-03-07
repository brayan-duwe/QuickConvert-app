
struct Converter {
    static func convert(firstUnit: String, secondUnit: String, value: Double) -> String {
        var result: Double
        switch (firstUnit, secondUnit) {
        case("Meters", "Kilometers"):
            result = value / 1000
            return ("\(result) km")
        case("Meters", "Miles"):
            result = value * 0.000621371
            return("\(result) mi")
        case("Meters", "Yards"):
            result = value * 1.09361
            return("\(result) yd")
        case("Meters", "Feet"):
            result = value * 3.28084
            return ("\(result) ft")
            
        case("Kilometers", "Meters"):
            result = value * 1000
            return ("\(result) m")
        case("Kilometers", "Miles"):
            result = value * 0.621371
            return("\(result) mi")
        case("Kilometers", "Yards"):
            result = value * 1093.61
            return("\(result) yd")
        case("Kilometers", "Feet"):
            result = value * 3280.84
            return ("\(result) ft")
            
        case("Miles", "Meters"):
            result = value / 0.000621371
            return("\(result) m")
        case("Miles", "Kilometers"):
            result = value / 0.621371
            return("\(result) km")
        case("Miles", "Yards"):
            result = value * 1760
            return("\(result) yd")
        case("Miles", "Feet"):
            result = value * 5280
            return("\(result) ft")
        case("Yards", "Meters"):
            result = value * 0.9144
            return("\(result) m")
        case ("Yards", "Kilometers"):
             result = value / 1093.61
             return ("\(result) km")
         case ("Yards", "Miles"):
             result = value / 1760
             return ("\(result) mi")
         case ("Yards", "Feet"):
             result = value * 3
             return ("\(result) ft")
             
         case ("Feet", "Meters"):
             result = value * 0.3048
             return ("\(result) m")
         case ("Feet", "Kilometers"):
             result = value / 3280.84
             return ("\(result) km")
         case ("Feet", "Miles"):
             result = value / 5280
             return ("\(result) mi")
         case ("Feet", "Yards"):
             result = value / 3
             return ("\(result) yd")
             
         default:
             return ("\(value)")
        }
    }
}
