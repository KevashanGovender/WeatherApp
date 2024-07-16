This is an iOS application that follows an MVVM architecture using SwiftUI and Swift Concurrency to display weather information about the users current location

3rd Party Depedencies used:

* Factory for depedency injection, this was pulled in via SPM.
* Cuckoo for mocking for unit tests, this was pulled in via Cocoapods as there was a compilation issue in the version that SPM was pulling in.

The networking layer

Makes use  of a generic base implementation to make get requests and will return a type of Codable. Ideally the token should not be in these files you would want your app to log your user in and then pass that token to a backend service that you control where you can store the api token as an env variable and call the weather api that way. However in this case due to time constraints and for the purpose of demonstration I decided to leave the token as is in the source files as the openweather api has rate-limiting on the token and after you have reviewed the project I will be deleting the token.

Unit testing

There is some unit testing I did not use a TDD approach as I was a little brave and decided to use SwiftUI and Concurrency and had to learn as I went along but in ideal circumstances TDD would be preffered. All of the business logic can be fully tested. I did not write unit tests for the networking layer as I believe it gets tested via the repository tests.
