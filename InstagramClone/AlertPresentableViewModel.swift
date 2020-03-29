//
//  File.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//
import Foundation
import SwiftUI


protocol AlertPresentableViewModel:ObservableObject {
    var alertModel: AlertModel { get set }
}
