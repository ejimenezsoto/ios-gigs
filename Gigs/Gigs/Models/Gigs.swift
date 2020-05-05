//
//  Gigs.swift
//  Gigs
//
//  Created by Enzo Jimenez-Soto on 5/5/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import Foundation

struct Gig: Codable {
    let title: String
    let description: String
    let dueDate: Date
}
