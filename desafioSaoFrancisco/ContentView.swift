//
//  ContentView.swift
//  desafioSaoFrancisco
//
//  Created by Vitor Gomes on 10/03/23.
//

// TODO: Not too much aligments were used on this project, maybe it is a better idea to add this in the future.

import SwiftUI

struct ContentView: View {
    
    // MARK: Variables
    @State var emblemImage: Image? = Image("hogwarts")
    @State var count = 0
    
    var body: some View {
        VStack {
            
            // MARK: Group with title question and emblem image
            Group {
                Text("Qual sua casa em Harry Potter?")
                    .font(.title)
                emblemImage!
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            // MARK: Button
            Button {
                if count == 0 {
                    self.emblemImage = Image("corvinal")
                } else if count == 1 {
                    self.emblemImage = Image("grifinoria")
                } else if count == 2 {
                    self.emblemImage = Image("lufalufa")
                } else if count == 3 {
                    self.emblemImage = Image("sonserina")
                    count = 0
                    return
                }
                
                if count < 3 {
                    count += 1
                }else {
                    count = 0
                }
                
            } label: { // MARK: Label configuration
                Text("Escolha a sua casa")
            }.foregroundColor(Color.black)
                .frame(width: 250, height: 50)
                .background(Color.purple)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
