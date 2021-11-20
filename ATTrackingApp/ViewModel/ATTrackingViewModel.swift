//
//  ATTrackingViewModel.swift
//  ATTrackingApp
//
//  Created by sasaki.ken on 2021/11/20.
//

import Foundation

class ATTrackingViewModel: NSObject {
    private let repository: ATTrackingRepositoryInterface
    
    init(repository: ATTrackingRepositoryInterface) {
        self.repository = repository
        super.init()
    }
    
    override convenience init() {
        self.init(repository: RepositoryLocator.getATTrackingRepository())
    }
    
    func getTrackingStatus() -> TrackingStatusType {
       let status = repository.getTrackingStatusType()
        return status
    }
    
    func requestTrackingAuth() {
        repository.requestTrackingAuth()
    }
}
