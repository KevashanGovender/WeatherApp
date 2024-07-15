import SwiftUI
import Factory

struct WeatherView: View {
    
    @InjectedObject(\.weatherViewModel) var viewModel: WeatherViewModel
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                ZStack {
                    Image(viewModel.backgroundImage)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width)
                    VStack {
                        Text(viewModel.weatherCurrentTemp)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text(viewModel.weatherDescription)
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                }
                .opacity(viewModel.showLoading ? 0 : 1)
                
                VStack(spacing: 0) {
                    HStack(spacing: 150) {
                        VStack {
                            Text(viewModel.weatherMinTemp)
                                .foregroundColor(.white)
                            Text("min")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        VStack {
                            Text(viewModel.weatherCurrentTemp)
                                .foregroundColor(.white)
                            Text("current")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                        VStack {
                            Text(viewModel.weatherMaxTemp)
                                .foregroundColor(.white)
                            Text("max")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }
                    }
                    
                    List {
                        ForEach(viewModel.forecastItems) { item in
                            HStack(spacing: 100) {
                                Text(item.day)
                                    .foregroundColor(.white)
                                Image(item.icon)
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 50, height: 50)
                                Text(item.temp)
                                    .foregroundColor(.white)
                            }
                        }
                        .listRowBackground(Color.green)
                    }
                    .listStyle(PlainListStyle())
                    .scrollContentBackground(.hidden)
                }
                .opacity(viewModel.showLoading ? 0 : 1)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            viewModel.viewDidAppear()
        }
    }
}

#Preview {
    WeatherView()
}
