//
//  ATTrackingDataStore.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import Foundation
import AppTrackingTransparency

class ATTrackingDataStore {
    private var statusType: TrackingStatusType
    
    init() {
        statusType = .default
    }
    
    func getTrackingStatusType() -> TrackingStatusType {
        let status = ATTrackingManager.trackingAuthorizationStatus
        if status == .notDetermined {
            statusType = .notDetermined
        } else {
            statusType = .default
        }
        return statusType
    }
    
    func requestTrackingAuth() {
        ATTrackingManager.requestTrackingAuthorization { status in
            switch status {
            case .notDetermined:
                print("notDetermined")
            case .restricted:
                print("restricted")
            case .denied:
                print("denied")
            case .authorized:
                print("authorized")
            @unknown default:
                return
            }
        }
    }
}
