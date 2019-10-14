//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// Template created by: Victor S. Melo

/**
 - A ViewController is responsible for all UIKit stuff, like dealing with subviews, handling rotation, view loading, constraints, user actions, etc.
 - ViewController should not know it's coordinator.
 - ViewController should not deal with any business logic. It should be in ViewModel.
 - A ViewController has a one-to-one relationship with a ViewModel.

 For more details, take a look at our style guide.
 */

import Foundation
import Warren_UIKit

final class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    // MARK: - Subelements
    
    // MARK: - Properties
    
    var viewModel: ___VARIABLE_sceneName___ViewModelProtocol
    
    private(set) var state: ViewState = .loading
    
    // MARK: - Init
    init(viewModel: ___VARIABLE_sceneName___ViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.viewDelegate = self
    }
    
    @available(*, unavailable, message: "Not implemented")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.start()
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
        
    }
    
    // MARK: - Actions
    
}

// MARK: - ViewModel Delegate
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___ViewModelViewDelegate {
    
    func updateScreen() {
        
    }
    
    func updateState(_ state: ViewState) {
        self.state = state
    }
}

