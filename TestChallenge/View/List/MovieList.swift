//
//  MovieList.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import Foundation
import SwiftUI
import UIKit
import Combine

struct MovieList: View {
    var body: some View {
        VStack{
            NavigationLink(destination: DetailView()) {
                HStack{
                    AsyncImage(url: URL(string: posterPath[0])!,
                                   placeholder: { Text("Loading ...") },
                                   image: { Image(uiImage: $0).resizable() })
                           .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                        .frame(width:54, height:82.8, alignment: .leading)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                        .shadow(radius: 1)
                        
                    
                    VStack(alignment: .leading) {
                        Text(title[0])
                            .font(.custom("NotoSansKR-Medium", size: 13))
                            .frame(width:116, alignment: .leading)
                        
                        Stars()
                            .frame(width:90, alignment: .leading)
                        HStack{
                            Text("Action, Drama")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            
                            Text("2021-10-08")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .trailing)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                                .padding(.leading, 30)
                        }
                    }
                    .padding(.top, 5)
                    .padding(.leading, 12)
                }
            }
            .frame(width: 388)
            
            
            NavigationLink(destination: DetailView()) {
                HStack{
                    AsyncImage(url: URL(string: posterPath[1])!,
                                   placeholder: { Text("Loading ...") },
                                   image: { Image(uiImage: $0).resizable() })
                           .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3)
                        .frame(width:54, height:82.8, alignment: .center)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                        .shadow(radius: 1)
                        .padding(.trailing, 25)
                    
                    VStack(alignment: .leading) {
                        Text(title[1])
                            .font(.custom("NotoSansKR-Medium", size: 13))
                            .frame(width:116, alignment: .leading)
                        
                        Stars()
                            .frame(width:90, alignment: .leading)
                        HStack{
                            Text("Action, Drama")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            
                            Text("2021-10-08")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .trailing)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                                .padding(.leading, 30)
                        }
                    }
                    }
                    .padding(.top, 5)
                    .padding(.leading, 12)
                    
            }
            .frame(width: 388)
            
            NavigationLink(destination: DetailView()) {
                HStack{
                    AsyncImage(url: URL(string: posterPath[2])!,
                                   placeholder: { Text("Loading ...") },
                                   image: { Image(uiImage: $0).resizable() })
                           .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3) // 2:3 aspect ratio
                        .frame(width:54, height:82.8, alignment: .center)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                        .shadow(radius: 1)
                        .padding(.trailing, 25)
                    
                    VStack(alignment: .leading) {
                        Text(title[2])
                            .font(.custom("NotoSansKR-Medium", size: 13))
                            .frame(width:116, alignment: .leading)
                        
                        Stars()
                            .frame(width:90, alignment: .leading)
                        HStack{
                            Text("Action, Drama")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .leading)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                            
                            Text("2021-10-08")
                                .font(.custom("NotoSansKR-Regular", size: 13))
                                .frame(width:116, alignment: .trailing)
                                .foregroundColor(Color(#colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6039215686, alpha: 1)))
                                .padding(.leading, 30)
                        }
                    }
                    }
                    .padding(.top, 5)
                    .padding(.leading, 12)
            }
            .frame(width: 388)
            
            
        }
        .padding(.bottom, 20)
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}

struct AsyncImage<Placeholder: View>: View {
    @StateObject private var loader: ImageLoader
    private let placeholder: Placeholder
    private let image: (UIImage) -> Image
    
    init(
        url: URL,
        @ViewBuilder placeholder: () -> Placeholder,
        @ViewBuilder image: @escaping (UIImage) -> Image = Image.init(uiImage:)
    ) {
        self.placeholder = placeholder()
        self.image = image
        _loader = StateObject(wrappedValue: ImageLoader(url: url, cache: Environment(\.imageCache).wrappedValue))
    }
    
    var body: some View {
        content
            .onAppear(perform: loader.load)
    }
    
    private var content: some View {
        Group {
            if loader.image != nil {
                image(loader.image!)
            } else {
                placeholder
            }
        }
    }
}

protocol ImageCache {
    subscript(_ url: URL) -> UIImage? { get set }
}

struct TemporaryImageCache: ImageCache {
    private let cache = NSCache<NSURL, UIImage>()
    
    subscript(_ key: URL) -> UIImage? {
        get { cache.object(forKey: key as NSURL) }
        set { newValue == nil ? cache.removeObject(forKey: key as NSURL) : cache.setObject(newValue!, forKey: key as NSURL) }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    private(set) var isLoading = false
    
    private let url: URL
    private var cache: ImageCache?
    private var cancellable: AnyCancellable?
    
    private static let imageProcessingQueue = DispatchQueue(label: "image-processing")
    
    init(url: URL, cache: ImageCache? = nil) {
        self.url = url
        self.cache = cache
    }
    
    deinit {
        cancel()
    }
    
    func load() {
        guard !isLoading else { return }

        if let image = cache?[url] {
            self.image = image
            return
        }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .handleEvents(receiveSubscription: { [weak self] _ in self?.onStart() },
                          receiveOutput: { [weak self] in self?.cache($0) },
                          receiveCompletion: { [weak self] _ in self?.onFinish() },
                          receiveCancel: { [weak self] in self?.onFinish() })
            .subscribe(on: Self.imageProcessingQueue)
            .receive(on: DispatchQueue.main)
            .sink { [weak self] in self?.image = $0 }
    }
    
    func cancel() {
        cancellable?.cancel()
    }
    
    private func onStart() {
        isLoading = true
    }
    
    private func onFinish() {
        isLoading = false
    }
    
    private func cache(_ image: UIImage?) {
        image.map { cache?[url] = $0 }
    }
}

struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TemporaryImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get { self[ImageCacheKey.self] }
        set { self[ImageCacheKey.self] = newValue }
    }
}
