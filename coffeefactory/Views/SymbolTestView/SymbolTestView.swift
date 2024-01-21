//
//  SymbolTestView.swift
//  coffeefactory
//
//  Created by yuncoffee on 1/21/24.
//

import SwiftUI
import CoffeeFactorySwift

struct SymbolTestView: View {
    @State private var isPlay = false
    @State private var showReaction = false
    @State private var iconName = "house.fill"
    @State private var myColor: CFColor = .colorScale(.blue(.base))
    //    @State private var animationType: Animation =

    @State private var speed: CGFloat = 2.0
    @State private var size: CGFloat = 100.0
    @State private var isEditing = false
    @State private var isMoving = false
    
    var body: some View {
        VStack {
            // shows
            VStack(alignment: .leading) {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: 200)
                
//                HStack {
//                    Text("Default Case")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.55, dampingFraction: 0.825, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 1")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.55, dampingFraction: 1.0, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 2")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.55, dampingFraction: 2.0, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 3")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.55, dampingFraction: 3.0, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 4")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.15, dampingFraction: 0.825, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 5")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.85, dampingFraction: 0.825, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 6")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 1.25, dampingFraction: 0.25, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
//                HStack {
//                    Text("Test Case 6")
//                        .frame(width: 120)
//                    Image(systemName: "house.fill")
//                        .offset(x: isMoving ? 100 : 0)
//                        .animation(
//                            .spring(response: 0.8, dampingFraction: 0.45, blendDuration: 0.0).repeatCount(3),
//                            value: isMoving
//                        )
//                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: 300, alignment: .center)
            Divider()
            // picker
            VStack {
                HStack {
                    TextField("iconName", text: $iconName)
                }
                HStack {
                    Text("Size: \(size.description)")
                    Slider(value: $size, in: 0...200, step: 1) {
                        Text("Icon size")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("200")
                    }
                }
//                HStack {
//                    Picker
//                }
                HStack {
                    Toggle(isOn: $isMoving, label: {
                        Text("Move")
                    })
                    //                    Spacer()
                    //                    Button {
                    //                        isMoving.toggle()
                    //                    } label: {
                    //                        Label("Play", systemImage: "play.fill")
                    //                    }
                }
                VStack {
                    Slider(
                        value: $speed,
                        in: 0...5,
                        step: 0.1
                    ) {
                        Text("Speed")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("5")
                    } onEditingChanged: { editing in
                        isEditing = editing
                    }
                    Text("\(speed)")
                }
            }
            .padding()
        }
    }
}

#Preview {
    SymbolTestView()
}
