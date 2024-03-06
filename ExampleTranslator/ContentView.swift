//
//  ContentView.swift
//  ExampleTranslator
//
//  Created by Иван Знак on 25/02/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        @State var image: UIImage?
        NavigationView {
            VStack {
                Text("Scan a document")
                    .font(.title)
                    .padding()
            }
            HStack {
                VStack{
                    Image(uiImage: image ?? UIImage())
                        .padding()
                        .dynamicTypeSize(.large)
                        .padding(EdgeInsets(top: 100, leading: 100, bottom: 100, trailing: 100))
                        .frame(depth: 100, alignment: .center)
                    Button(.init("Tap me"), action: {
                        image = ScreenshotManager.shared.doScreenshot()!
                        print(image?.size)
                        
                    })
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
