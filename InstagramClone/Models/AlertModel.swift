//
//  AlertModel.swift
//  InstagramClone
//
//  Created by ilario salatino on 29.03.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import SwiftUI

struct AlertModel{
    
    var title: String = NSLocalizedString("alert_title_attention", comment: "")
    var message: String
    var button: String = NSLocalizedString("alert_button_ok", comment: "")
    var show: Bool
    
    
}
