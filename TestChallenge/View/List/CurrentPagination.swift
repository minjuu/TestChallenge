//
//  CurrentPagination.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct Movie : Identifiable {
    let id = UUID()
    let title : String
    let movieName: String
    let idn: Int
}


struct DetailData: Decodable {
    let posterPath : String
    let title : String
    let overview : String
}

struct CurrentPagination: View {

    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment:.center) {
                    ForEach(movies) {
                        movie in MovieView(movie: movie)
                    }
                }
            }
            .padding(.bottom,30)
            .padding(.leading, 10)
        
        }
    }
}

struct CurrentPagination_Previews: PreviewProvider {
    static var previews: some View {
        CurrentPagination()
    }
}


struct MovieView: View {
    let movie : Movie
    var body: some View {
        VStack{
            VStack{
                NavigationLink(destination: DetailView()) {

                Button(action: {loadDetail(idx: movie.idn);print(movie.idn)
}){AsyncImage(url: URL(string: movie.movieName)!,
                               placeholder: { Text("Loading ...") },
                               image: { Image(uiImage: $0).resizable() })
                       .frame(width:124.8, height:191.004)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                            .shadow(radius: 1)
                }
                }
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.custom("NotoSansKR-Medium", size: 13))
                        .frame(width:116)
                }
                .padding(.top, 5)
                }
                Stars()
            }
        
        .padding(.leading, 5)
        .frame(width:140, height: 250)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .foregroundColor(.black)
        .cornerRadius(15.0)
    }



func loadDetail(idx : Int) {
    guard let url = URL(string: "https://api.themoviedb.org/3/movie/\(idx)?api_key\(apiKey)") else {
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
            let detailData = try decoder.decode(DetailData.self, from: data)
            
            doverview = detailData.overview
            dposterPath = "https://image.tmdb.org/t/p/original"+detailData.posterPath
            dtitle = detailData.title
            
            
        } catch {
            print("Error serializing Json: ", error)
        }
    }.resume()
    
}

}
