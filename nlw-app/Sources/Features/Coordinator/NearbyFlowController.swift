//
//  NearbyFlowControler.swift
//  nlw-app
//
//  Created by Marcus Freitas on 25/12/24.
//

import Foundation
import UIKit

class NearbyFlowController {
    private var navigationController: UINavigationController?
    
    public init (){
        
    }
    
    func start() -> UINavigationController? {
        //let startViewController = SplashViewController(contentView: SplashView(), delegate: self)
        let startViewController = HomeViewController()

        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
}

extension NearbyFlowController: SplashFlowDelegate{
    func decideNavigationFlow(){
        let contentView = WelcomeView()
        let welcomeViewController = WelcomeViewController(contentView: contentView)
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
}
