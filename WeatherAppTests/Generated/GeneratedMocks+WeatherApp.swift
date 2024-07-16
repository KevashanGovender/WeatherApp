// MARK: - Mocks generated from file: 'WeatherApp/ContentView.swift'

import Cuckoo
import SwiftUI
import Factory
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/LocationPermissionRequestView.swift'

import Cuckoo
import SwiftUI
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/CurrentWeatherDTO.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/CurrentWeatherResponse.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/Main.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/Weather.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/WeatherForecastDTO.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Model/WeatherForecastResponse.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/Repository/WeatherInformationRepository.swift'

import Cuckoo
import Foundation
import Factory
@testable import WeatherApp

class MockWeatherInformationRepository: WeatherInformationRepository, Cuckoo.ProtocolMock {
    typealias MocksType = WeatherInformationRepository
    typealias Stubbing = __StubbingProxy_WeatherInformationRepository
    typealias Verification = __VerificationProxy_WeatherInformationRepository

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: (any WeatherInformationRepository)?

    func enableDefaultImplementation(_ stub: any WeatherInformationRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherDTO {
        return try await cuckoo_manager.callThrows(
            "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherDTO",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: await __defaultImplStub!.getCurrentWeather(lat: p0, lon: p1)
        )
    }
    
    func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastDTO {
        return try await cuckoo_manager.callThrows(
            "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastDTO",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: await __defaultImplStub!.getWeatherForecast(lat: p0, lon: p1)
        )
    }

    struct __StubbingProxy_WeatherInformationRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ProtocolStubThrowingFunction<(Double, Double), CurrentWeatherDTO> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherInformationRepository.self,
                method: "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherDTO",
                parameterMatchers: matchers
            ))
        }
        
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ProtocolStubThrowingFunction<(Double, Double), WeatherForecastDTO> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherInformationRepository.self,
                method: "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastDTO",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_WeatherInformationRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), CurrentWeatherDTO> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherDTO",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), WeatherForecastDTO> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastDTO",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class WeatherInformationRepositoryStub:WeatherInformationRepository {


    
    func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherDTO {
        return DefaultValueRegistry.defaultValue(for: (CurrentWeatherDTO).self)
    }
    
    func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastDTO {
        return DefaultValueRegistry.defaultValue(for: (WeatherForecastDTO).self)
    }
}




// MARK: - Mocks generated from file: 'WeatherApp/Service/AsyncNetworkService.swift'

import Cuckoo
import Foundation
@testable import WeatherApp

class MockAsyncNetworkService: AsyncNetworkService, Cuckoo.ClassMock {
    typealias MocksType = AsyncNetworkService
    typealias Stubbing = __StubbingProxy_AsyncNetworkService
    typealias Verification = __VerificationProxy_AsyncNetworkService

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: AsyncNetworkService?

    func enableDefaultImplementation(_ stub: AsyncNetworkService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    override func get<T: Codable> (endpoint p0: String) async throws -> T {
        return try await cuckoo_manager.callThrows(
            "get<T: Codable> (endpoint p0: String) async throws -> T",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: await super.get(endpoint: p0),
            defaultCall: await __defaultImplStub!.get(endpoint: p0)
        )
    }

    struct __StubbingProxy_AsyncNetworkService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func get<M1: Cuckoo.Matchable, T: Codable>(endpoint p0: M1) -> Cuckoo.ClassStubThrowingFunction<(String), T> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAsyncNetworkService.self,
                method: "get<T: Codable> (endpoint p0: String) async throws -> T",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_AsyncNetworkService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func get<M1: Cuckoo.Matchable, T: Codable>(endpoint p0: M1) -> Cuckoo.__DoNotUse<(String), T> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "get<T: Codable> (endpoint p0: String) async throws -> T",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class AsyncNetworkServiceStub:AsyncNetworkService {


    
    override func get<T: Codable> (endpoint p0: String) async throws -> T {
        return DefaultValueRegistry.defaultValue(for: (T).self)
    }
}




// MARK: - Mocks generated from file: 'WeatherApp/Service/LocationService.swift'

import Cuckoo
import Foundation
import CoreLocation
import Factory
@testable import WeatherApp

class MockLocationService: LocationService, Cuckoo.ClassMock {
    typealias MocksType = LocationService
    typealias Stubbing = __StubbingProxy_LocationService
    typealias Verification = __VerificationProxy_LocationService

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: LocationService?

    func enableDefaultImplementation(_ stub: LocationService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    
    override var userLocation: CLLocation? {
        get {
            return cuckoo_manager.getter(
                "userLocation",
                superclassCall: super.userLocation,
                defaultCall: __defaultImplStub!.userLocation
            )
        }
        set {
            cuckoo_manager.setter(
                "userLocation",
                value: newValue,
                superclassCall: super.userLocation = newValue,
                defaultCall: __defaultImplStub!.userLocation = newValue
            )
        }
    }

    
    override func requestLocation() {
        return cuckoo_manager.call(
            "requestLocation()",
            parameters: (),
            escapingParameters: (),
            superclassCall: super.requestLocation(),
            defaultCall: __defaultImplStub!.requestLocation()
        )
    }

    struct __StubbingProxy_LocationService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var userLocation: Cuckoo.ClassToBeStubbedOptionalProperty<MockLocationService,CLLocation> {
            return .init(manager: cuckoo_manager, name: "userLocation")
        }
        
        func requestLocation() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockLocationService.self,
                method: "requestLocation()",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_LocationService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var userLocation: Cuckoo.VerifyOptionalProperty<CLLocation> {
            return .init(manager: cuckoo_manager, name: "userLocation", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
        @discardableResult
        func requestLocation() -> Cuckoo.__DoNotUse<(), Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
                "requestLocation()",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class LocationServiceStub:LocationService {
    
    override var userLocation: CLLocation? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CLLocation?).self)
        }
        set {}
    }


    
    override func requestLocation() {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}




// MARK: - Mocks generated from file: 'WeatherApp/Service/WeatherService.swift'

import Cuckoo
import Foundation
import Factory
@testable import WeatherApp

class MockWeatherService: WeatherService, Cuckoo.ProtocolMock {
    typealias MocksType = WeatherService
    typealias Stubbing = __StubbingProxy_WeatherService
    typealias Verification = __VerificationProxy_WeatherService

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    private var __defaultImplStub: (any WeatherService)?

    func enableDefaultImplementation(_ stub: any WeatherService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse {
        return try await cuckoo_manager.callThrows(
            "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: await __defaultImplStub!.getCurrentWeather(lat: p0, lon: p1)
        )
    }
    
    func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse {
        return try await cuckoo_manager.callThrows(
            "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall(),
            defaultCall: await __defaultImplStub!.getWeatherForecast(lat: p0, lon: p1)
        )
    }

    struct __StubbingProxy_WeatherService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ProtocolStubThrowingFunction<(Double, Double), CurrentWeatherResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherService.self,
                method: "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
                parameterMatchers: matchers
            ))
        }
        
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ProtocolStubThrowingFunction<(Double, Double), WeatherForecastResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherService.self,
                method: "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_WeatherService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), CurrentWeatherResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), WeatherForecastResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class WeatherServiceStub:WeatherService {


    
    func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse {
        return DefaultValueRegistry.defaultValue(for: (CurrentWeatherResponse).self)
    }
    
    func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse {
        return DefaultValueRegistry.defaultValue(for: (WeatherForecastResponse).self)
    }
}


class MockWeatherServiceImpl: WeatherServiceImpl, Cuckoo.ClassMock {
    typealias MocksType = WeatherServiceImpl
    typealias Stubbing = __StubbingProxy_WeatherServiceImpl
    typealias Verification = __VerificationProxy_WeatherServiceImpl

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: WeatherServiceImpl?

    func enableDefaultImplementation(_ stub: WeatherServiceImpl) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }

    
    override func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse {
        return try await cuckoo_manager.callThrows(
            "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: await super.getCurrentWeather(lat: p0, lon: p1),
            defaultCall: await __defaultImplStub!.getCurrentWeather(lat: p0, lon: p1)
        )
    }
    
    override func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse {
        return try await cuckoo_manager.callThrows(
            "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
            parameters: (p0, p1),
            escapingParameters: (p0, p1),
            superclassCall: await super.getWeatherForecast(lat: p0, lon: p1),
            defaultCall: await __defaultImplStub!.getWeatherForecast(lat: p0, lon: p1)
        )
    }
    
    override func get<T: Codable> (endpoint p0: String) async throws -> T {
        return try await cuckoo_manager.callThrows(
            "get<T: Codable> (endpoint p0: String) async throws -> T",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: await super.get(endpoint: p0),
            defaultCall: await __defaultImplStub!.get(endpoint: p0)
        )
    }

    struct __StubbingProxy_WeatherServiceImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ClassStubThrowingFunction<(Double, Double), CurrentWeatherResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherServiceImpl.self,
                method: "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
                parameterMatchers: matchers
            ))
        }
        
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.ClassStubThrowingFunction<(Double, Double), WeatherForecastResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherServiceImpl.self,
                method: "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
                parameterMatchers: matchers
            ))
        }
        
        func get<M1: Cuckoo.Matchable, T: Codable>(endpoint p0: M1) -> Cuckoo.ClassStubThrowingFunction<(String), T> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherServiceImpl.self,
                method: "get<T: Codable> (endpoint p0: String) async throws -> T",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_WeatherServiceImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        
        @discardableResult
        func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), CurrentWeatherResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(lat p0: M1, lon p1: M2) -> Cuckoo.__DoNotUse<(Double, Double), WeatherForecastResponse> where M1.MatchedType == Double, M2.MatchedType == Double {
            let matchers: [Cuckoo.ParameterMatcher<(Double, Double)>] = [wrap(matchable: p0) { $0.0 }, wrap(matchable: p1) { $0.1 }]
            return cuckoo_manager.verify(
                "getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func get<M1: Cuckoo.Matchable, T: Codable>(endpoint p0: M1) -> Cuckoo.__DoNotUse<(String), T> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "get<T: Codable> (endpoint p0: String) async throws -> T",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class WeatherServiceImplStub:WeatherServiceImpl {


    
    override func getCurrentWeather(lat p0: Double, lon p1: Double) async throws -> CurrentWeatherResponse {
        return DefaultValueRegistry.defaultValue(for: (CurrentWeatherResponse).self)
    }
    
    override func getWeatherForecast(lat p0: Double, lon p1: Double) async throws -> WeatherForecastResponse {
        return DefaultValueRegistry.defaultValue(for: (WeatherForecastResponse).self)
    }
    
    override func get<T: Codable> (endpoint p0: String) async throws -> T {
        return DefaultValueRegistry.defaultValue(for: (T).self)
    }
}




// MARK: - Mocks generated from file: 'WeatherApp/Util/DateUtil.swift'

import Cuckoo
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/ViewModel/WeatherViewModel.swift'

import Cuckoo
import Foundation
import Factory
import CoreLocation
@testable import WeatherApp

class MockWeatherViewModel: WeatherViewModel, Cuckoo.ClassMock {
    typealias MocksType = WeatherViewModel
    typealias Stubbing = __StubbingProxy_WeatherViewModel
    typealias Verification = __VerificationProxy_WeatherViewModel

    // Original typealiases

    let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    private var __defaultImplStub: WeatherViewModel?

    func enableDefaultImplementation(_ stub: WeatherViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    
    override var weatherInfoRepo: WeatherInformationRepository {
        get {
            return cuckoo_manager.getter(
                "weatherInfoRepo",
                superclassCall: super.weatherInfoRepo,
                defaultCall: __defaultImplStub!.weatherInfoRepo
            )
        }
        set {
            cuckoo_manager.setter(
                "weatherInfoRepo",
                value: newValue,
                superclassCall: super.weatherInfoRepo = newValue,
                defaultCall: __defaultImplStub!.weatherInfoRepo = newValue
            )
        }
    }
    
    override var showLoading: Bool {
        get {
            return cuckoo_manager.getter(
                "showLoading",
                superclassCall: super.showLoading,
                defaultCall: __defaultImplStub!.showLoading
            )
        }
        set {
            cuckoo_manager.setter(
                "showLoading",
                value: newValue,
                superclassCall: super.showLoading = newValue,
                defaultCall: __defaultImplStub!.showLoading = newValue
            )
        }
    }
    
    override var weatherDescription: String {
        get {
            return cuckoo_manager.getter(
                "weatherDescription",
                superclassCall: super.weatherDescription,
                defaultCall: __defaultImplStub!.weatherDescription
            )
        }
        set {
            cuckoo_manager.setter(
                "weatherDescription",
                value: newValue,
                superclassCall: super.weatherDescription = newValue,
                defaultCall: __defaultImplStub!.weatherDescription = newValue
            )
        }
    }
    
    override var weatherCurrentTemp: String {
        get {
            return cuckoo_manager.getter(
                "weatherCurrentTemp",
                superclassCall: super.weatherCurrentTemp,
                defaultCall: __defaultImplStub!.weatherCurrentTemp
            )
        }
        set {
            cuckoo_manager.setter(
                "weatherCurrentTemp",
                value: newValue,
                superclassCall: super.weatherCurrentTemp = newValue,
                defaultCall: __defaultImplStub!.weatherCurrentTemp = newValue
            )
        }
    }
    
    override var weatherMinTemp: String {
        get {
            return cuckoo_manager.getter(
                "weatherMinTemp",
                superclassCall: super.weatherMinTemp,
                defaultCall: __defaultImplStub!.weatherMinTemp
            )
        }
        set {
            cuckoo_manager.setter(
                "weatherMinTemp",
                value: newValue,
                superclassCall: super.weatherMinTemp = newValue,
                defaultCall: __defaultImplStub!.weatherMinTemp = newValue
            )
        }
    }
    
    override var weatherMaxTemp: String {
        get {
            return cuckoo_manager.getter(
                "weatherMaxTemp",
                superclassCall: super.weatherMaxTemp,
                defaultCall: __defaultImplStub!.weatherMaxTemp
            )
        }
        set {
            cuckoo_manager.setter(
                "weatherMaxTemp",
                value: newValue,
                superclassCall: super.weatherMaxTemp = newValue,
                defaultCall: __defaultImplStub!.weatherMaxTemp = newValue
            )
        }
    }
    
    override var backgroundImage: String {
        get {
            return cuckoo_manager.getter(
                "backgroundImage",
                superclassCall: super.backgroundImage,
                defaultCall: __defaultImplStub!.backgroundImage
            )
        }
        set {
            cuckoo_manager.setter(
                "backgroundImage",
                value: newValue,
                superclassCall: super.backgroundImage = newValue,
                defaultCall: __defaultImplStub!.backgroundImage = newValue
            )
        }
    }
    
    override var forecastItems: [ForecastItem] {
        get {
            return cuckoo_manager.getter(
                "forecastItems",
                superclassCall: super.forecastItems,
                defaultCall: __defaultImplStub!.forecastItems
            )
        }
        set {
            cuckoo_manager.setter(
                "forecastItems",
                value: newValue,
                superclassCall: super.forecastItems = newValue,
                defaultCall: __defaultImplStub!.forecastItems = newValue
            )
        }
    }

    
    override func viewDidAppear() async {
        return await cuckoo_manager.call(
            "viewDidAppear() async",
            parameters: (),
            escapingParameters: (),
            superclassCall: await super.viewDidAppear(),
            defaultCall: await __defaultImplStub!.viewDidAppear()
        )
    }
    
    override func fetchCurrentWeather(userLocation p0: CLLocation) async {
        return await cuckoo_manager.call(
            "fetchCurrentWeather(userLocation p0: CLLocation) async",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: await super.fetchCurrentWeather(userLocation: p0),
            defaultCall: await __defaultImplStub!.fetchCurrentWeather(userLocation: p0)
        )
    }
    
    override func fetchWeatherForecast(userLocation p0: CLLocation) async {
        return await cuckoo_manager.call(
            "fetchWeatherForecast(userLocation p0: CLLocation) async",
            parameters: (p0),
            escapingParameters: (p0),
            superclassCall: await super.fetchWeatherForecast(userLocation: p0),
            defaultCall: await __defaultImplStub!.fetchWeatherForecast(userLocation: p0)
        )
    }

    struct __StubbingProxy_WeatherViewModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        var weatherInfoRepo: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,WeatherInformationRepository> {
            return .init(manager: cuckoo_manager, name: "weatherInfoRepo")
        }
        
        var showLoading: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,Bool> {
            return .init(manager: cuckoo_manager, name: "showLoading")
        }
        
        var weatherDescription: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,String> {
            return .init(manager: cuckoo_manager, name: "weatherDescription")
        }
        
        var weatherCurrentTemp: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,String> {
            return .init(manager: cuckoo_manager, name: "weatherCurrentTemp")
        }
        
        var weatherMinTemp: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,String> {
            return .init(manager: cuckoo_manager, name: "weatherMinTemp")
        }
        
        var weatherMaxTemp: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,String> {
            return .init(manager: cuckoo_manager, name: "weatherMaxTemp")
        }
        
        var backgroundImage: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,String> {
            return .init(manager: cuckoo_manager, name: "backgroundImage")
        }
        
        var forecastItems: Cuckoo.ClassToBeStubbedProperty<MockWeatherViewModel,[ForecastItem]> {
            return .init(manager: cuckoo_manager, name: "forecastItems")
        }
        
        func viewDidAppear() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherViewModel.self,
                method: "viewDidAppear() async",
                parameterMatchers: matchers
            ))
        }
        
        func fetchCurrentWeather<M1: Cuckoo.Matchable>(userLocation p0: M1) -> Cuckoo.ClassStubNoReturnFunction<(CLLocation)> where M1.MatchedType == CLLocation {
            let matchers: [Cuckoo.ParameterMatcher<(CLLocation)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherViewModel.self,
                method: "fetchCurrentWeather(userLocation p0: CLLocation) async",
                parameterMatchers: matchers
            ))
        }
        
        func fetchWeatherForecast<M1: Cuckoo.Matchable>(userLocation p0: M1) -> Cuckoo.ClassStubNoReturnFunction<(CLLocation)> where M1.MatchedType == CLLocation {
            let matchers: [Cuckoo.ParameterMatcher<(CLLocation)>] = [wrap(matchable: p0) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockWeatherViewModel.self,
                method: "fetchWeatherForecast(userLocation p0: CLLocation) async",
                parameterMatchers: matchers
            ))
        }
    }

    struct __VerificationProxy_WeatherViewModel: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var weatherInfoRepo: Cuckoo.VerifyProperty<WeatherInformationRepository> {
            return .init(manager: cuckoo_manager, name: "weatherInfoRepo", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var showLoading: Cuckoo.VerifyProperty<Bool> {
            return .init(manager: cuckoo_manager, name: "showLoading", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var weatherDescription: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "weatherDescription", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var weatherCurrentTemp: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "weatherCurrentTemp", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var weatherMinTemp: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "weatherMinTemp", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var weatherMaxTemp: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "weatherMaxTemp", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var backgroundImage: Cuckoo.VerifyProperty<String> {
            return .init(manager: cuckoo_manager, name: "backgroundImage", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var forecastItems: Cuckoo.VerifyProperty<[ForecastItem]> {
            return .init(manager: cuckoo_manager, name: "forecastItems", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
        @discardableResult
        func viewDidAppear() -> Cuckoo.__DoNotUse<(), Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
                "viewDidAppear() async",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func fetchCurrentWeather<M1: Cuckoo.Matchable>(userLocation p0: M1) -> Cuckoo.__DoNotUse<(CLLocation), Void> where M1.MatchedType == CLLocation {
            let matchers: [Cuckoo.ParameterMatcher<(CLLocation)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "fetchCurrentWeather(userLocation p0: CLLocation) async",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
        
        
        @discardableResult
        func fetchWeatherForecast<M1: Cuckoo.Matchable>(userLocation p0: M1) -> Cuckoo.__DoNotUse<(CLLocation), Void> where M1.MatchedType == CLLocation {
            let matchers: [Cuckoo.ParameterMatcher<(CLLocation)>] = [wrap(matchable: p0) { $0 }]
            return cuckoo_manager.verify(
                "fetchWeatherForecast(userLocation p0: CLLocation) async",
                callMatcher: callMatcher,
                parameterMatchers: matchers,
                sourceLocation: sourceLocation
            )
        }
    }
}

class WeatherViewModelStub:WeatherViewModel {
    
    override var weatherInfoRepo: WeatherInformationRepository {
        get {
            return DefaultValueRegistry.defaultValue(for: (WeatherInformationRepository).self)
        }
        set {}
    }
    
    override var showLoading: Bool {
        get {
            return DefaultValueRegistry.defaultValue(for: (Bool).self)
        }
        set {}
    }
    
    override var weatherDescription: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        set {}
    }
    
    override var weatherCurrentTemp: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        set {}
    }
    
    override var weatherMinTemp: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        set {}
    }
    
    override var weatherMaxTemp: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        set {}
    }
    
    override var backgroundImage: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        set {}
    }
    
    override var forecastItems: [ForecastItem] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([ForecastItem]).self)
        }
        set {}
    }


    
    override func viewDidAppear() async {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func fetchCurrentWeather(userLocation p0: CLLocation) async {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    override func fetchWeatherForecast(userLocation p0: CLLocation) async {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
}




// MARK: - Mocks generated from file: 'WeatherApp/WeatherAppApp.swift'

import Cuckoo
import SwiftUI
import Foundation
@testable import WeatherApp



// MARK: - Mocks generated from file: 'WeatherApp/WeatherView.swift'

import Cuckoo
import SwiftUI
import Factory
import Foundation
@testable import WeatherApp

