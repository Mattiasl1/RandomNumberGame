//
//  Homescreen.swift
//  RandomNumberGame
//
//  Created by Mattias Liljenberg on 2021-12-08.
//



import SwiftUI




struct Homescreen: View {
    @State var SavedStreak = UserDefaults.standard.integer(forKey: "beststreak")
    @State var TopStreak = 0
    @State var goNext = false
    @State var ShowHearts = false
    @State var HeartCounter : Int = 0
    @State var Hearts = UserDefaults.standard.integer(forKey: "hearts")
    
    
    
    var body: some View {
        ZStack {
            Image("RandomBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                //kommande
                /*
                 Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                 Image(systemName: "gearshape.fill")
                 .foregroundColor(.random)
                 .padding(.leading, 280.0)
                 .font(.system(size: 40))
                 }
                 */
                
                
                HStack {
                    SmallCoolBtn(smalltext: "R")
                    SmallCoolBtn(smalltext: "A")
                    SmallCoolBtn(smalltext: "N")
                    SmallCoolBtn(smalltext: "D")
                    SmallCoolBtn(smalltext: "O")
                    SmallCoolBtn(smalltext: "M")
                }
                
                HStack{
                    SmallCoolBtn(smalltext: "N")
                    SmallCoolBtn(smalltext: "U")
                    SmallCoolBtn(smalltext: "M")
                    SmallCoolBtn(smalltext: "B")
                    SmallCoolBtn(smalltext: "E")
                    SmallCoolBtn(smalltext: "R")
                        .padding(.trailing)
                    
                    
                    SmallCoolBtn(smalltext: "G")
                    SmallCoolBtn(smalltext: "A")
                    SmallCoolBtn(smalltext: "M")
                    SmallCoolBtn(smalltext: "E")
                    
                }
                
                
                
                Text("Top streak:")
                    .foregroundColor(.random)
                    .underline(true, color: .random)
                    .font(.largeTitle)
                    .padding()
                
                
                ZStack {
                    Text(String(SavedStreak))
                    
                        .foregroundColor(.random)
                        .font(.system(size: 200))
                        .shadow(color: .black, radius: 1, x: 0, y: 0)
                        .shadow(color: .white, radius: 0.5, x: 0, y: 0)
                        .onTapGesture(count: 1) {
                            withAnimation {
                                Hearts = Hearts + 1
                                ShowHearts.toggle()
                                let oldstreak = UserDefaults.standard.integer(forKey: "hearts")
                                
                                if(Hearts > oldstreak)
                                {
                                    UserDefaults.standard.set(Hearts, forKey: "hearts")
                                    
                                }
                               
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
                                withAnimation {
                                    ShowHearts.toggle()
                                }
                            }
                        }
                    
                    
                    
                    
                    
                    VStack {
                        HStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.random)
                                .frame(width: 100, height: 100)
                                .opacity(ShowHearts ? 0.9 : 0)
                                .animation(.linear(duration: 0.2))
                            Image(systemName: "heart.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.random)
                                .frame(width: 100, height: 100)
                                .opacity(ShowHearts ? 0.9 : 0)
                                .animation(.linear(duration: 0.2))
                            
                        }
                        
                        HStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.random)
                                .frame(width: 100, height: 100)
                                .opacity(ShowHearts ? 0.9 : 0)
                                .animation(.linear(duration: 0.2))
                            Image(systemName: "heart.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.random)
                                .frame(width: 100, height: 100)
                                .opacity(ShowHearts ? 0.9 : 0)
                                .animation(.linear(duration: 0.2))
                            
                        }
                    }
                    
                }
                
                Text(String(Hearts))
                    .font(.title)
                    .foregroundColor(.random)
                    .padding()
                
                Text("Give your streak some love by pressing it")
                    .padding(.all)
                    .foregroundColor(.random)
                
                
                
                
                
                Button(action: {
                    goNext = true
                    // goNext = true
                }) {
                    CoolButton(text: "LETS PLAY")
                    
                }.fullScreenCover(isPresented: $goNext, content: { ContentView()
                })
                /*
                 .fullScreenCover(isPresented: $goNext, content: { ContentView()
                 })
                 */
                
            }
            /*
             .fullScreenCover(isPresented: $goNext)
             {
             ContentView(isPresented: $goNext)
             }
             
             */
            
            /*
             fullScreenCover(isPresented: $goNext)
             {
             ContentView()
             }
             */
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
