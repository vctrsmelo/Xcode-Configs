//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// Template created by: Victor S. Melo

/**
 - A coordinator is responsible for handling the navigation and relationship between ViewController's and subcoordinators.
 - A coordinator has to:
 - instantiate ViewControllers and ViewModels
 - instantiate and inject dependencies into the ViewController and ViewModel
 - present or push ViewController onto the screen.
 - To start a coordinator flow, the coordinator who instantiates it must present/push its rootViewController. Besides, it must define the coordinator closures finishFlow and cancelFlow.
 
 For more details, take a look at our style guide.
 */

import Foundation
import Warren_UIKit
import Warren_NetworkKit
import Warren_Components

class ___VARIABLE_coordinatorName___Coordinator: Coordinator {
    
    // MARK: - Subelements
    
    // TODO: Implement InputData
    struct InputOutputData {
        
    }
    
    // TODO: Implement OutputData
    struct OutputData {
        
    }
    
    typealias Input = InputData
    typealias Output = OutputData
    
    // MARK: - Properties
    
    var rootViewController: UIViewController?
    var childCoordinators: [CoordinatorProtocol] = []
    
    var finishFlow: ((Output) -> Void)?
    var cancelFlow: (() -> Void)?
    
    private var inputReceived: Input!
    
    // MARK: - Init
    
    init() {
        
    }
    
    // MARK: - Setup & Start
    
    func configure(_ input: Input) {
        self.inputReceived = input
        
        // Defines rootViewController here.
        
        let vm = <# rootViewController ViewModel #>
        vm.coordinatorDelegate = self
        
        let vc = <# rootViewController #>
        
        rootViewController = vc
    }
    
}
