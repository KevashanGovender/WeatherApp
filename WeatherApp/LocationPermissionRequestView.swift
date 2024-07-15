import SwiftUI

struct LocationPermissionRequestView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Text("WeatherNow")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding()
                
                Spacer()
                
                Text("We require location permissions to be able to show you weather data accurate to your current location. This data is only used to determine the weather at your current location.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.headline)
                    .foregroundColor(.green)
                
                Spacer()
                
                Button(action: {
                    LocationService.shared.requestLocation()
                }, label: {
                    Text("GRANT PERMISSION")
                        .padding()
                        .foregroundColor(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.green)
                        )
                })
                .padding()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    LocationPermissionRequestView()
}
