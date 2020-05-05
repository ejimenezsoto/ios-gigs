//
//  GigController.swift
//  Gigs
//
//  Created by Enzo Jimenez-Soto on 5/5/20.
//  Copyright © 2020 Enzo Jimenez-Soto. All rights reserved.
//

import Foundation

class GigController {
    var bearer: Bearer?
    
    var gigs: [Gig] = []
    
    var baseURL = URL(string: "https://lambdagigs.vapor.cloud/api")!
    
}
