//
//  ContentView.swift
//  RandomNumberGame
//
//  Created by Mattias Liljenberg on 2021-12-08.
//


import SwiftUI

extension ShapeStyle where Self == Color {
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

struct ContentView: View {
    //@State private var gameScoreEU : Int = 0
    
    @State var showCorrect = false
    @State var FakeRound = 44
    @State private var randomnumber : Int = 50
    @State var Score : Int = 0
    @State var Round : Int = 0
    @State var LastRound : Int = 0
    @State var showifWrong = false
    @State var LastRoundNumber = UserDefaults.standard.integer(forKey: "lastnumber")
    
    @State var goBack = false
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        
        
        
        ZStack {
            
            Image("RandomBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            /*
             LinearGradient(gradient: Gradient(colors: [.black, .red, .orange, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
             .edgesIgnoringSafeArea(.all)
             */
            
            
            VStack {
                HStack {
                    Button(action: {
                        //presentationMode.wrappedValue.dismiss()
                        goBack = true
                    }) {
                        Image(systemName: "arrow.backward.square.fill")
                            .foregroundColor(.random)
                            .font(.system(size: 50))
                            .padding(.trailing, 280.0)
                            .shadow(color: .black, radius: 1, x: 0, y: 0)
                            .shadow(color: .white, radius: 0, x: 0, y: 0)
                        
                        
                        
                    }.fullScreenCover(isPresented: $goBack, content: { Homescreen()
                    })
                    /*
                     .fullScreenCover(isPresented: $goBack, content: { Homescreen()
                     })
                     */
                    
                    
                }
                
                HStack {
                    Text("Lower")
                        .foregroundColor(.random)
                        .underline()
                        .font(.system(size: 25))
                        .shadow(color: .white, radius: 0.5, x: 0, y: 0)
                        .padding()
                    
                    Text("OR")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .shadow(color: .white, radius: 0.5, x: 0, y: 0)
                    
                    
                    Text("Higher?")
                        .foregroundColor(.random)
                        .underline()
                        .font(.system(size: 25))
                        .shadow(color: .white, radius: 0.5, x: 0, y: 0)
                        .padding()
                }
                
                Text("0-100")
                    .foregroundColor(.random)
                
                /*
                 HStack{
                 Text("Previous Number:")
                 .foregroundColor(.white)
                 Text(String(LastRoundNumber))
                 .foregroundColor(.white)
                 }
                 */
                
                ZStack {
                    Text("\(String(randomnumber))")
                        .font(.system(size: 140))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 10, x: 0, y: 0)
                        .padding()
                    
                    
                    if(showCorrect)
                    {
                        
                        Text("+ 1").fontWeight(.bold).opacity(1).foregroundColor(Color.green).font(.system(size: 50))
                            .shadow(color: .black, radius: 10, x: 0, y: 0)
                        
                    }
                    
                    if(showifWrong) {
                        Text("Try Again!").fontWeight(.bold).opacity(1).foregroundColor(Color.red).font(.system(size: 50))
                            .shadow(color: .black, radius: 10, x: 0, y: 0)
                    }
                }
                
                
                
                
                
                //Text("Streak:   \(String(Round))")
                Text("Streak:   \(String(FakeRound))")
                    .foregroundColor(.white)
                    .padding()
                    .font(.system(size: 30))
                
                
                
                
                
                
                
                
                
                /*
                 if(showCorrect)
                 {
                 
                 Text("+1").fontWeight(.bold).opacity(1).foregroundColor(Color.white).font(.system(size: 70))
                 .shadow(color: .black, radius: 10, x: 0, y: 0)
                 
                 }
                 */
                
                
                
                
                HStack {
                    
                    
                    Button(action: {
                        
                        let randomInt = Int.random(in: 1...100)
                        
                        if randomnumber > randomInt {
                            Round = Round + 1
                            showCorrect = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                
                                showCorrect = false
                                
                            }}else if randomnumber < randomInt {
                                Round = 0
                                showifWrong = true
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    
                                    showifWrong = false
                                }
                            }
                        randomnumber = randomInt
                        let oldstreak = UserDefaults.standard.integer(forKey: "beststreak")
                        
                        if(Round > oldstreak)
                        {
                            UserDefaults.standard.set(Round, forKey: "beststreak")
                            
                        }
                        
                    }) {
                        Image(systemName: "arrow.down.square.fill")
                            .foregroundColor(.random)
                            .font(.system(size: 150))
                            .shadow(color: .black, radius: 2, x: 0, y: 0)
                            .shadow(color: .white, radius: 1, x: 0, y: 0)
                    }
                    
                    
                    
                    
                    
                    
                    
                    Button(action: {
                        
                        let  randomInt = Int.random(in: 1...100)
                        
                        if randomnumber < randomInt {
                            Round = Round + 1
                            
                            showCorrect = true
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                
                                showCorrect = false
                                
                            }}else if randomnumber > randomInt {
                                Round = 0
                                showifWrong = true
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    
                                    showifWrong = false
                                }
                            }
                        randomnumber = randomInt
                        let oldstreak = UserDefaults.standard.integer(forKey: "beststreak")
                        
                        if(Round > oldstreak)
                        {
                            UserDefaults.standard.set(Round, forKey: "beststreak")
                            
                        }
                        
                        
                        /*
                         let  randomInt = Int.random(in: 1...100)
                         
                         if randomnumber < randomInt {
                         self.Score += 10
                         }
                         randomnumber = randomInt
                         */
                        
                        /*
                         if(randomInt <= self.randomInt) {
                         Score = Score - 5
                         Round = 0
                         }
                         
                         */
                        
                        
                    }) {
                        Image(systemName: "arrow.up.square.fill")
                            .foregroundColor(.random)
                            .font(.system(size: 150))
                            .shadow(color: .black, radius: 2, x: 0, y: 0)
                            .shadow(color: .white, radius: 1, x: 0, y: 0)
                    }
                }
                
                
                
                Button(action: {
                    
                    let randomInt = Int.random(in: 1...100)
                    randomnumber = randomInt
                    Round = 0
                }) {
                    Text("RANDOM")
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.random)
                        .background(.random)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black, lineWidth: 5)
                        )
                        .cornerRadius(30)
                        .padding(.bottom, 10.0)
                        .shadow(color: .black, radius: 4, x: 0, y: 0)
                        .padding(.horizontal)
                        .shadow(color: .white, radius: 3, x: 0, y: 0)
                }
                
                
                
            }
            
            
        }
        
        
        
        
    }
    
    
    
    
    func popupstreak() {
        showCorrect = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            
            showCorrect = false
        }
        
        /*
         func SaveNumber() {
         let oldscore = UserDefaults.standard.integer(forKey: "lastnumber")
         
         if(self.randomInt > oldscore && self.randomInt < oldscore)
         {
         UserDefaults.standard.set(randomInt, forKey: "lastnumber")
         
         }
         }
         */
        
        
    }
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
