import SwiftUI

struct ContentView: View {
    @State private var firstUnit = "Meters"
    @State private var secondUnit = "Kilometers"
    @State private var value = 0.0
    @State private var animateSwap = false
    var result: String {Converter.convert(firstUnit: firstUnit, secondUnit: secondUnit, value: value)}
    @State private var temporaryValue: String = ""
    
    let units = ["Meters", "Kilometers", "Miles", "Yards", "Feet"]
    var body: some View {
        NavigationStack{
            Form{
                Section("Select the conversion"){
                    ZStack{
                        VStack(spacing: 36) {
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
                        Button {
                            swapUnits()
                            animateSwap.toggle()
                            
                        } label: {
                            Image(systemName: "arrow.up.arrow.down")
                                .symbolEffect(.rotate, value: animateSwap)
                        } .buttonStyle(.glassProminent)
                            .frame(maxWidth: .infinity)
                            
                    }
                }
                Section("Type the value to convert"){
                    TextField("Value to Convert", value: $value, format: .number)
                } .keyboardType(.decimalPad)
                
                Section("Result"){
                    Text(result)
                        .fontWeight(.bold)
                }
                
            }
            .navigationTitle("Quick Convert")
        }
    }
    func swapUnits() {
        swap(&firstUnit, &secondUnit)
    }
}

#Preview {
    ContentView()
}


