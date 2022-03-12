//  ContentView.swift
//  DiscordTest
//  Created by Caleb Faulkner on 3/10/22.

import SwiftUI

extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "Secondary")
    }
}

struct ContentView: View {
        
    static let color0 = Color(red: 55/255, green: 57/255, blue: 63/255);
            
    static let color1 = Color(red: 46/255, green: 48/255, blue: 54/255);
    
    static let color2 = Color(red: 88/255, green: 101/255, blue: 242/255);
            
    static let color3 = Color(red: 66/255, green: 80/255, blue: 226/255);
    
    let gradient = Gradient(colors: [color0, color1]);
    
    let gradient2 = Gradient(colors: [color2, color3]);
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(LinearGradient(
                              gradient: gradient,
                              startPoint: .init(x: 0.50, y: 0.00),
                              endPoint: .init(x: 0.50, y: 1.00)
                            ))
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
                    .frame(width: 428, height: 187)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
                HStack {
                    Text("Library")
                        .bold()
                        .font(.largeTitle)
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
                        .padding(.top, -155)
                    Image("cog")
                        .padding(.top, -145)
                        .padding(.leading, 150)
                    Image("profile")
                        .padding(.top, -150)
                        .padding(.leading, 10)
                }
                HStack {
                    Text ("       Connect Account")
                        .bold()
                        .frame(width: 156, height: 30)
                        .font(.footnote)
                        .background(
                            Image("add")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(LinearGradient(
                                          gradient: gradient2,
                                          startPoint: .init(x: 0.50, y: 0.00),
                                          endPoint: .init(x: 0.50, y: 1.00)
                                        ))
                        )
                        .padding(.leading, -175)
                        .padding(.top, -125)
                }
                VStack {
                    Text("  Alien Isolation")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(15)
                        .background(
                            Image("alien")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                    Text("      Assassin's Cre...")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(15)
                        .background(
                            Image("origins")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                    Text("      Batman Arkham...")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(15)
                        .background(
                            Image("batman")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                    Text("Borderlands 2")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(15)
                        .background(
                            Image("borderlands")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                    Text("      Detroit Become...")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(10)
                        .background(
                            Image("detroit")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                    Text("   Genshin Impact")
                        .fontWeight(.bold)
                        .tracking(2)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 10)
                        .padding(15)
                        .background(
                            Image("genshin")
                        )
                        .background(
                            Image("menu")
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(Color("CardColor"))
                                .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 5)
                                .frame(width: 350, height: 70)
                        )
                        .padding(30)
                }
                Spacer()
                ///How do you add icons to a tabview?
                TabView {
                }
                .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: -2)
            }
            VStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("CardColor"))
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 2)
                    .frame(width: 428, height: 45)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
