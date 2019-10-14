//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// Template created by: Victor S. Melo

/**
 - A ViewModel is responsible for business logic, like network requests, validation, preparing model data for presentation (converting models to view data), etc.
 - A ViewModel should not use any UIKit component except UIColor, when needed.
 - A ViewModel should be easy to test.
 - A ViewModel has a one-to-one relationship with a ViewController.
 
 For more details, take a look at our style guide.
 */

import Foundation
import Warren_UIKit
import Warren_Components

/**
A ViewModel should be protocol based because when you inject the ViewModel dependency into the ViewController, we don't want to depend on a concrete type. This let's us experiment with different implementations, for testing or other purposes.
*/
protocol ___VARIABLE_sceneName___ViewModelProtocol {
    
    var viewDelegate: ___VARIABLE_sceneName___ViewModelViewDelegate? { get set }
    
    // MARK: - DataSource
    
    // MARK: - Events
    
    func start()
    
    func didSelectClose(from controller: UIViewController)
    
}

protocol ___VARIABLE_sceneName___ViewModelCoordinatorDelegate: AnyObject {
    
}

protocol ___VARIABLE_sceneName___ViewModelViewDelegate: AnyObject {
    
    func updateScreen()
    
    func updateState(_ state: ViewState)
    
}

final class ___VARIABLE_sceneName___ViewModel {
    
    // MARK: - Delegates
    
    weak var coordinatorDelegate: ___VARIABLE_sceneName___ViewModelCoordinatorDelegate?
    weak var viewDelegate: ___VARIABLE_sceneName___ViewModelViewDelegate?
    
    // MARK: - Properties
    private let service: ___VARIABLE_sceneName___Service
    
    // MARK: - Init
    
    init(service: ___VARIABLE_sceneName___Service) {
        self.service = service
    }
    
    func start() {
        
    }
    
    // MARK: - Network
    
    // MARK: - Others
    
}

extension ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {
    
}

