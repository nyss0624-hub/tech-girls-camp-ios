import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CoffeeListView()
                .tabItem{
                    Image(systemName:"list.bullet")
                    Text("Coffees")
                }
            Text("Favorites View")
                .tabItem{
                    Image(systemName:"star.fill")
                    Text("Favorites")
                }
            TodayCoffee()
                .tabItem{
                    Image(systemName:"sunrise.fill")
                    Text("Today's Coffee")
                }
        }
    }
}

#Preview {
    MainTabView()
}
