//
//  CalculationView.swift
//  SquareMe
//
//  Created by Oliver Finlayson on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    //MARK: Stored Properties
    
    @State var inputGiven = ""
    
    
    //MARK: Computed Properties
    
    //Convert the input give into an optional Double
    var inputGivenAsOptionalDouble: Double? {
        
        //Attempt to create optional Double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            //User gave us bad input so we cannot convert
            return nil
        }
        
        //We have an actual double, so return it
        return inputGivenAsDouble
        
    }
    
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
            }
            navigationTitle("Square Me")
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}
