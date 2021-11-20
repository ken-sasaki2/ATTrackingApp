//
//  ATTrackingRepository.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import Foundation

class ATTrackingRepository: ATTrackingRepositoryInterface {
    private let dataStore = ATTrackingDataStore()
    
    func getTrackingStatusType() -> TrackingStatusType {
        let status = dataStore.getTrackingStatusType()
        return status
    }
    
    func requestTrackingAuth() {
        dataStore.requestTrackingAuth()
    }
}
