//
//  File.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//
import Foundation
import SwiftUI


class AlertPresentableViewModel:BaseResponseViewModel {
    @Published var alertModel: AlertModel = AlertModel(message: "", show: false) {
        willSet { self.objectWillChange.send() }
    }
}
