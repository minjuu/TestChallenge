//
//  HighratingCell.swift
//  TestChallenge
//
//  Created by 강민주 on 2021/10/08.
//

import SwiftUI

struct HighratingCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16){
                Text("높은 평점")
                    .font(.custom("NotoSansKR-Bold", size: 25))
                    .padding(.leading, 20)
                    .padding(.bottom, 10)
                
                VStack{
                    HStack{
                        AsyncImage(url: URL(string: posterPathh[0])!,
                                       placeholder: { Text("Loading ...") },
                                       image: { Image(uiImage: $0).resizable() })
                               .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3) // 2:3 aspect ratio
                            .frame(width:54, height:82.8)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                            .shadow(radius: 1)
                        
                        VStack(alignment: .leading) {
                            Text(titleh[0])
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
                    .frame(width: 388)
                    
                    HStack{
                        AsyncImage(url: URL(string: posterPathh[1])!,
                                       placeholder: { Text("Loading ...") },
                                       image: { Image(uiImage: $0).resizable() })
                               .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3) // 2:3 aspect ratio
                            .frame(width:54, height:82.8)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                            .shadow(radius: 1)
                        
                        VStack(alignment: .leading) {
                            Text(titleh[1])
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
                    .frame(width: 388)
                    
                    HStack{
                        AsyncImage(url: URL(string: posterPathh[2])!,
                                       placeholder: { Text("Loading ...") },
                                       image: { Image(uiImage: $0).resizable() })
                               .frame(idealHeight: UIScreen.main.bounds.width / 2 * 3) // 2:3 aspect ratio
                            .frame(width:54, height:82.8)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(#colorLiteral(red: 0.8979505897, green: 0.8981012702, blue: 0.8979307413, alpha: 1)), lineWidth: 1))
                            .shadow(radius: 1)
                        
                        VStack(alignment: .leading) {
                            Text(titleh[2])
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
                    .frame(width: 388)
                    
                    
                }
                .padding(.bottom, 20)
            }
            
                
                
            }
        }
    }


struct HighratingCell_Previews: PreviewProvider {
    static var previews: some View {
        HighratingCell()
    }
}
