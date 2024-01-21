//
//  TypoTestView.swift
//  coffeefactory
//
//  Created by yuncoffee on 1/21/24.
//

import SwiftUI
import CoffeeFactorySwift

struct TypoTestView: View {
    
    @State
    private var myBorderColor: Color = .cf(.colorScale(.blue(.base)))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Hello Coffee Factory\n1234567")
                .foregroundStyle(myBorderColor)
                .pretendard(.display)
                .border(myBorderColor, width: 1)
            Text("Hello Coffee Factory\n1234567")
                .font(.largeTitle)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .background(.cf(.primaryScale(.primary(.base))))
                .foregroundStyle(.cf(.colorScale(.lavendar(.dark))))
                .pretendard(.largeTitle)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.title)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.title2)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.title3)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.subTitle)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.headline)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory")
                .pretendard(.body)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory123")
                .pretendard(.caption)
                .border(.cf(.colorScale(.green(.base))), width: 1)
            Text("Hello Coffee\nFactory123")
                .pretendard(.caption2)
                .border(.cf(.colorScale(.green(.base))), width: 1)
        }
        .frame(alignment: .leading)
        .padding()
        .border(.cf(.colorScale(.red(.darkness))), width: 2)
    }
}

#Preview {
    TypoTestView()
}
