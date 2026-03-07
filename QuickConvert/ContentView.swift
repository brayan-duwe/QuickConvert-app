import SwiftUI

struct ContentView: View {
    @State private var firstUnit = "Meters"
    @State private var secondUnit = "Kilometers"
    @State private var value = 0.0
    var result: String {Converter.convert(firstUnit: firstUnit, secondUnit: secondUnit, value: value)}
    @State private var temporaryValue: String = ""
    
    let units = ["Meters", "Kilometers", "Miles", "Yards", "Feet"]
    var body: some View {
        NavigationStack{
            Form{
                Section("Select the conversion"){
                    Picker("From", selection: $firstUnit){
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                    Picker("To", selection: $secondUnit){
                        ForEach(units, id: \.self) { unit in
                            Text(unit)
                        }
                    }
                }
                Section("Type the value to convert"){
                    TextField("Value to Convert", value: $value, format: .number)
                } .keyboardType(.decimalPad)
                
                Section("Result"){
                    Text(result)
                }
                
            }
            .navigationTitle("Quick Convert")
        }
    }
}

#Preview {
    ContentView()
}


