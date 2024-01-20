//
//  ContentView.swift
//  coffeefactory
//
//  Created by yuncoffee on 12/12/23.
//

import SwiftUI
import SwiftData
import WebKit
import CoffeeFactorySwift

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State 
    private var myBorderColor: Color = .cf(.colorScale(.blue(.base)))
    
    var body: some View {
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//#if os(macOS)
//            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
//#endif
//            .toolbar {
//#if os(iOS)
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//#endif
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
        VStack(alignment: .leading, spacing: 4) {
//            WebView(urlToLoad: "https://www.naver.com")
            Text("Hello Coffee Factory\n1234567")
                .foregroundStyle(myBorderColor)
                .pretendard(.display)
                .border(myBorderColor, width: 1)
            Text("Hello Coffee Factory\n1234567")
                .font(.largeTitle)
                .border(.cf(.colorScale(.green(.base))), width: 1)
////                .foregroundStyle(Color.customColor)
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

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

struct WebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> some UIView {
        //unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        //웹뷰 인스턴스 생성
        let webView = WKWebView()
        
        //웹뷰를 로드한다
        webView.load(URLRequest(url: url))
        return webView
    }
    
    //업데이트 ui view
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
