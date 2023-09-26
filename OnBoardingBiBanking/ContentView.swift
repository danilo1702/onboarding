//
//  ContentView.swift
//  OnBoardingBiBanking
//
//  Created by Danilo Hernandez on 22/09/23.
//

import SwiftUI

class InformationOnboarding: ObservableObject {
    @Published var selection: Int = 0
    
    var arrayView: [OnboardingView] = MockInformation.arrayView
}

struct PruebaTopView: View {
    var foregroundColor: Color
    var body: some View {
        
        HStack {
         Spacer()
            Button {
                print("OMITIR")
            } label: {
                Text("OMITIR")
                    .foregroundColor(foregroundColor)
            }
        }.padding()
        
    }
}
struct PruebaInferiorView: View {
    var body: some View {
        VStack {
            
            Button {
                print("Comenzamossss")
            } label: {
                Text("Comencemos!!")
                    .foregroundColor(.white)
            }.padding()
                .background(Color.blue.opacity(0.4))
                .cornerRadius(18)
        }
    }
}


struct ContentView: View {
    @StateObject var information: InformationOnboarding = InformationOnboarding()
    var body: some View {
        ZStack {
            
            TabView(selection: $information.selection) {
                ForEach(information.arrayView, id: \.modelView.id) { view in
                    view
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .environmentObject(information)
                        .tag(view.tag)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(InformationOnboarding())
    }
}


