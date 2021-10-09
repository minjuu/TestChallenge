//
//  File.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/09.
//

import Foundation
import SwiftUI
import Combine

let apiKey = "d84062482977d3497af33e6f7983cd29"
var title = [String]()
var posterPath = [String]()
var idn = [Int]()

var titlep = [String]()
var posterPathp = [String]()
var idnp = [Int]()

var titleh = [String]()
var posterPathh = [String]()
var idnh = [Int]()

var doverview = ""
var dtitle = ""
var dposterPath = ""

var movies = [Movie]()

struct MovieData: Decodable {
    let results : [Results]
}

struct Results: Decodable {
    let posterPath : String
    let title : String
    let id : Int
}



struct SplashView: View {
    @State var isActive:Bool = false
    var body: some View {
        VStack {
            Text("")
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        loadData()
                        loadCurrent()
                        loadPopular()
                        loadHighrating()
                    }
                }
            

            if self.isActive {
                ContentView()
            } else {
                Image("icon")
                    .resizable()
                    .frame(width: 100, height: 100)
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }

func loadData() {
    guard let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=\(apiKey)&page=1") else {
        fatalError("Invalid URL")
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
            return
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            decoder.dateDecodingStrategy = .secondsSince1970
            let movieData = try decoder.decode(MovieData.self, from: data)
            movieData.results.forEach{
                posterPath.append("https://image.tmdb.org/t/p/original"+$0.posterPath)
                title.append($0.title)
                idn.append($0.id)
            }
            
        } catch {
            print("Error serializing Json: ", error)
        }
    }.resume()
    
}
    
    func loadCurrent() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=\(apiKey)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                decoder.dateDecodingStrategy = .secondsSince1970
                let movieData = try decoder.decode(MovieData.self, from: data)
                movieData.results.forEach{
                    movies.append(Movie(title: $0.title, movieName: "https://image.tmdb.org/t/p/original"+$0.posterPath, idn: $0.id))
                }
                
            } catch {
                print("Error serializing Json: ", error)
            }
        }.resume()
        
    }
    
    func loadPopular() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(apiKey)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                decoder.dateDecodingStrategy = .secondsSince1970
                let movieData = try decoder.decode(MovieData.self, from: data)
                movieData.results.forEach{
                    posterPathp.append("https://image.tmdb.org/t/p/original"+$0.posterPath)
                    titlep.append($0.title)
                    idnp.append($0.id)
                    print(posterPathp)
                }
                
            } catch {
                print("Error serializing Json: ", error)
            }
        }.resume()
        
    }
    
    func loadHighrating() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(apiKey)") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                decoder.dateDecodingStrategy = .secondsSince1970
                let movieData = try decoder.decode(MovieData.self, from: data)
                movieData.results.forEach{
                    posterPathh.append("https://image.tmdb.org/t/p/original"+$0.posterPath)
                    titleh.append($0.title)
                    idnh.append($0.id)
                    print(posterPathh)
                }
                
            } catch {
                print("Error serializing Json: ", error)
            }
        }.resume()
        
    }
    
    
}
