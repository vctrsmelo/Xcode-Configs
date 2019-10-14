//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// Template created by: Victor S. Melo

/**
 - A service is a connection between the app and outside world (database, bluetooth connection, API, camera, etc.)
 - A service wrap around some sort of client (ex: APIClient), and add all the model parsing and business logic on top of it.
 - A service must have a single responsibility of dealing with a specific kind of service or resource.
 - We should separate Service's by logical units. For example: SessionService deals with login/signup, and a PostService deals with posting pictures up to your server. This way, when a ViewModel get's injected with the Service it needs, it is getting a specific Service that deals only with the needs of that specific part of application (single responsibility principle).
 
 For more details, take a look at our style guide.
*/

public protocol ___VARIABLE_sceneName___Service {
    
    // MARK: - Variables
    
    // MARK: - Methods Signature
    
}

public class ___VARIABLE_sceneName___<#Client#>Service: ___VARIABLE_sceneName___Service {
    
    // MARK: - Variables

    // MARK: - Methods Implementation
    
    // MARK: - Others
}

// Add other clients here
