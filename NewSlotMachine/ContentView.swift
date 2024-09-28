//
//  ContentView.swift
//  NewSlotMachine
//
//  Created by Silvia Asmat on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var creditScore = 1000
    @State private var slotOne = "apple 1"
    @State private var slotTwo = "cherry 1"
    @State private var slotThree = "star 1"
    
    let slotHolder = ["apple", "cherry","star"]
    
    var body: some View {
        
        VStack {
            Text("Slot Machine")
                .font(.title)
                .padding()
            Spacer()
            Group{Text("Credits: ") +
                Text(String(creditScore))}
                .font(.title2)
            }
            
            Spacer()
            HStack{
                Image(slotOne).resizable()
                
                Image(slotTwo).resizable()
                
                Image(slotThree).resizable()

            } .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            Button(action: {
                slotOne = slotHolder.randomElement()!
                slotTwo = slotHolder.randomElement()!
                slotThree = slotHolder.randomElement()!
                
                if(slotOne == slotTwo && slotTwo == slotThree) {
                    creditScore += 35
                } else {
                    creditScore -= 15
                }
            }, label: {
                Text("Button").padding()
            
            })
            .padding([.leading, .trailing], 10)
            .foregroundColor(.white)
            .background(Color(.systemPink))
            .cornerRadius(25)
            .font(.system(size: 18, weight: .bold, design: .default))
            Spacer()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
