//
//  RepositoryLocator.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import Foundation

class RepositoryLocator {
    static func getATTrackingRepository() -> ATTrackingRepositoryInterface {
        return ATTrackingRepository()
    }
}
