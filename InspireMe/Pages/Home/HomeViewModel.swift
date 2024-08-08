//
//  HomeViewModel.swift
//  InspireMe
//
//  Created by Артур on 05.08.2024.
//

import Foundation
import Combine

protocol HomeViewModelProtocol: AnyObject, ObservableObject {
    var data: [String] { get }
    
    func fetchData()
}

class HomeViewModel: HomeViewModelProtocol {
    @Published var data: [String] = []
    
    func fetchData() {
        
    }
}
