//
//  ContentView.swift
//  testBlockerApp
//
//  Created by Gerardo Ruiz on 6/14/25.
//

import SwiftUI

import SwiftUI

struct OnBoarding: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer() // Push everything to the top
                Image(systemName: "iphone")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("QuitScroll \nSocial Media Blocker App")
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding()
                Spacer() // Push everything to the top

                NavigationLink(destination: SecondView()) {
                    Text("Continue                 ")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}


struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a 2 blank screen.")
                .font(.title)
                .padding()
            NavigationLink(destination: ThirdView()) {
                Text("Siguiente pagina")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationBarBackButtonHidden(true) // Hide the default back button
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss() // Go back
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}


struct ThirdView: View {
    var body: some View {
        Text("This is a 3  blank screen.")
            .font(.title)
            .padding()
        NavigationLink(destination: FourthView()) {
            Text("Siguiente pagina")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct FourthView: View {
    var body: some View {
        Text("Papi es bello")
            .font(.title)
            .padding()
    }
}
