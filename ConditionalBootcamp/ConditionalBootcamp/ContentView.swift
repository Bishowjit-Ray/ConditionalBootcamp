//
//  ContentView.swift
//  ConditionalBootcamp
//
//  Created by Bishowjit Ray on 13/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var showCircle: Bool = false
    @State var ShowRectangle: Bool = false
//    @State var isloading: Bool = false
    var body: some View {
        VStack(spacing: 20){
            
//            Button("Isloading: \(isloading.description)") {
//                isloading.toggle()
//            }
//
//            if isloading{
//                ProgressView()
//            }
//            else{
//
//            }
            Button("Circle Button : \(showCircle.description)"){
                showCircle.toggle()
            }
            Button("Rectangle: \(ShowRectangle.description) "){
                ShowRectangle.toggle()
            }

                if showCircle  {
                    Circle()
                        .frame(width: 100, height: 100)
                }


               if ShowRectangle{

                Rectangle()
                    .frame(width: 100, height: 100)
            }
            if showCircle || ShowRectangle {
               RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
            }
            Spacer()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
