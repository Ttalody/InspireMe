//
//  HomeView.swift
//  InspireMe
//
//  Created by Артур on 05.08.2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color(.secondarySystemFill)
                .ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 0) {
                    ForEach(viewModel.data.indices, id: \.self) { index in
                        ZStack {
                            Rectangle()
                                .fill(
                                    LinearGradient(
                                        colors: [.white, .blue.opacity(0.6), .white],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .containerRelativeFrame([.horizontal, .vertical])
                            
                            Spacer()
                            
                            Text(viewModel.data[index])
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            Spacer()
                        }
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.paging)
            .ignoresSafeArea()
            .scrollIndicators(.never)
            
            Button(action: {
                print("Button tapped")
            }) {
                Image(systemName: "gearshape")
                    .font(.title.weight(.thin))
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(16)
                    .shadow(radius: 8)
            }
            .padding([.top, .trailing], 16)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
