//
//  ContentView.swift
//  AnimalClickedGame
//
//  Created by yucian huang on 2024/3/10.
//

import SwiftUI

// App Name: PaperScissorStone
// APP Describtion: If you thought this is the tradtional Paper Scissor Stone then you're so wrong! Come join the great victory war with your competitive friend!

// NOTE: 1. Set a timer, when time up see who win
// NOTE: 2. FrontSpeaking: Hi warriors, start your battle!

// NOTE FOR ADULTS:
// This game can provibe kids having a more serious little game battle than paper scisscor stone, when they need to decdie a TV channel or who's turn to buy egg for mom, even more fair tbh. You can set your alarm from 1 to 5mins long to crete your own epic time .

struct ContentView: View {
    
    @State var countdoggo = 0
    @State var countCar = 0
    @State var doggoLevel = 0
    @State var catLevel = 0
    @State var heartPopUp = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack{
                //MARK: Title
                Text("Revolutiion")
                    .font(.title)
                    .bold()
                Image(systemName: "trophy.fill")
                    .foregroundColor(.gray)
                
            }
            HStack{
                Text("\(doggoLevel)")
                Text("\(catLevel)")
            }
            
            Spacer()
            

            // NOTE: Only if the heartPopUp = true, show heart bust also need to satisfied the countingNums = 10 situation will show as rewards sign
            
            // MARK: Calculate Notify
            HStack{
                if countdoggo % 10 == 0 && countdoggo > 0 {
                    
                    if heartPopUp == true {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                    }
                    
                    Text("Doggo Upgraded!")
                        .bold()
                }
                
                if countCar != 0 && countCar % 10 == 0 {
                    
                    if heartPopUp == true {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                    }
                    Text("Meow Upgraded!")
                        .bold()
                }
                
            }
            Spacer()
            // MARK: Middle Picture
            HStack{
                Image("pxArt")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .cornerRadius(100.0)
            }
            Spacer()
            HStack {
                // MARK: Tap Sum
                Spacer()
                Text("\(countdoggo)")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.secondary)
                Spacer()
                
                Text("\(countCar)")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.secondary)
                Spacer()
            }
            HStack{
                // MARK: Level Up Buttons
                Spacer()
                
                Button(action: {
                    countdoggo = countdoggo + 1
                    if countdoggo % 10 == 0 && countdoggo > 0 {
                        doggoLevel += 1
                        heartPopUp = true
                    }
                }) {
                    Image(systemName: "dog.fill")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.blue)
                }
                Spacer()
                
                Button(action: {
                    countCar = countCar + 1
                    if countCar % 10 == 0 && countCar > 0 {
                        catLevel += 1
                        heartPopUp = true
                    }
                    
                }) {
                    Image(systemName: "cat.fill")
                        .font(.largeTitle)
                        .padding()
                        .foregroundColor(.yellow)
                }
  
                Spacer()
            }
            
            Spacer()
            // MARK: Attack Button
            HStack {
                Spacer()
                Button {
                      countCar = countCar - 1
                } label: {
                    Image(systemName: "flag.2.crossed.circle.fill")
                        .font(.largeTitle)
                        .tint(.black)
                }
                Spacer()
                Button {
                      countdoggo = countdoggo - 1
                } label: {
                    Image(systemName: "flag.2.crossed.circle.fill")
                        .font(.largeTitle)
                        .tint(.black)
  
                }
                Spacer()
            }
            Spacer()
            HStack {
                Button {
                    self.restart()
                } label: {
                    Text("RESTART")
                        .tint(.white)
                        .padding()
                        .bold()
                        .background(Color.gray)
                        .cornerRadius(4.0)
                }
               
            }
        }
        .padding()   // vstack
    }

    
    // this for time up, Alert Button - restart
    
    func restart() {
        countdoggo = 0
        countCar = 0
        doggoLevel = 0
        catLevel = 0
    }
    
}




//
//                Button {
//                    catHappy = catHappy + 1
//                } label:{
//                    Image(systemName: "sun.max")
//                        .font(.largeTitle)
//                        .padding()
//                        .foregroundColor(.yellow)
//                }
                
//                Button("Add") {
//                    count = count + 1
//                    print(count)
//                }

//                Button("Removed") {
//                    count = count - 1
//                    print(count)
//                }
                
