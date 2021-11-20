//
//  ATTrackingRepositoryInterface.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import Foundation

protocol ATTrackingRepositoryInterface {
    func getTrackingStatusType() -> TrackingStatusType
    func requestTrackingAuth()
}
