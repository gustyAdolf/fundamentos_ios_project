//
//  ViewController.swift
//  AvengersApp
//
//  Created by Gustavo A Ramírez Franco on 2/12/20.
//

import UIKit

class SplashViewController: UIViewController {
    // MARK: - IBOulets views
    @IBOutlet var activityIndicator: UIActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator?.startAnimating()
        navigateNext()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    // MARK: - Private functions
    private func navigateNext() {
        let goToMain: () -> Void = { [weak self] in
            let storyBoardMain = UIStoryboard(name: "Main",
                                              bundle: nil)
            if let destination = storyBoardMain.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: goToMain)
    }
    
    
}

