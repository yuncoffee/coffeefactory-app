//
//  ContentView.swift
//  coffeefactory
//
//  Created by yuncoffee on 12/12/23.
//

import SwiftUI
import SwiftData
import WebKit

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
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
        VStack {
//            WebView(urlToLoad: "https://www.naver.com")
            Text("Hello Coffee Factory1234567")
                .foregroundStyle(Color.cf(.colorScale(.blue(.base))))
                .pretendard(.display)
            Text("Hello Coffee Factory1234567")
                .font(.largeTitle)
////                .foregroundStyle(Color.customColor)
            Text("Hello Coffee\nFactory")
                .background(Color.cf(.primaryScale(.primary(.base))))
                .foregroundStyle(Color.cf(.colorScale(.lavendar(.dark))))
                .pretendard(.largeTitle)
            Text("Hello Coffee\nFactory")
                .pretendard(.title)
            Text("Hello Coffee Factory")
                .pretendard(.title2)
            Text("Hello Coffee Factory")
                .pretendard(.title3)
            Text("Hello Coffee Factory")
                .pretendard(.subTitle)
            Text("Hello Coffee Factory")
                .pretendard(.headline)
            Text("Hello Coffee Factory")
                .pretendard(.body)
            Text("Hello Coffee Factory")
                .pretendard(.caption)
            Text("Hello Coffee Factory")
                .pretendard(.caption2)
        }
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
