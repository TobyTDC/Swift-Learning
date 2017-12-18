//
//  FactProvider.swift
//  FunFacts
//
//  Created by toby tang on 2017-10-05.
//  Copyright © 2017 Toby Tang. All rights reserved.
//

import GameKit


struct FactProvider {
    let facts = ["This is a app built by Toby Tang", "Copyright by Dongchen Tang",
                 "呵呵好像也能打中文😂", "hehehehe           hiahiahiaaihaihahaihaihaiahi"]
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        
        return facts[randomNumber]
    }
}
