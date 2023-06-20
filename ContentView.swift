import SwiftUI

struct navigation:  View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to Clew!")
                    .font(.largeTitle)
                Text("Precise short distance navigation for the blind  and visually impaired")
                Text("Please accept the Terms and Conditions before you get going")
                Text("Get to know the world around you through sound")
                    .font(.largeTitle)
                NavigationLink(destination: {page_1()}, label: {Text("Next")})
                                }
                            }
                        }
                    }




struct page_1:  View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Get to your destination by creating routes nonvisually")
                    .font(.largeTitle)
                Text("Click get started to launch the tutorial")
                NavigationLink(destination: {page_3()}, label: {Text("next")})
                                }
                            }
                        }
                    }

struct page_3:  View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("step 1 Create Cloud anchors:")
                    .font(.largeTitle)
                Text(" add first one here  ")
                Text("make your second anchor here:")
                Text("connect your anchors here!")
                    .font(.largeTitle)
                NavigationLink(destination: {ContentView()}, label: {Text("Get Started")})
                                }
                            }
                        }
                    }





struct ContentView: View {
    var body: some View {
        List {
            AppView(title: "SwiftUI", details: "iOS, macOS, and watchOS")
            Button(action: {
                print("Button action")}, label:
     {
                Text("test")
            })
                Button(action: {
                    print("Button action")
                
                       }, label:{
                    HStack {
                        Image(systemName: "bookmark.fill")
                        Text("Bookmark")
                    }
                    
                })
            AppView(title: "Android Studio", details: "Android")
            AppView(title: "React Native", details: "Android and iOS")
            Link(destination: URL(string: "https://www.simpleswiftguide.com")!)
        {Image(systemName: "paperplane")
                    .font(.largeTitle)
                
            }
            AppView(title: "Flutter", details: "Android, iOS, and the web")
            AppView(title: "Xamarin", details: "Android and iOS")
        }
    }
}



struct AppView: View {
    var title: String
    var details: String
    var body: some View {
        HStack {
            Image(systemName: "iphone")
            Link("Hobbies", destination: URL(string: "https://www.neosekaitranslations.com/novel/seven-demon-sword-princess-and-zero-knights/volume-1/chapter-2-part-3/")!)
                .accessibilityRemoveTraits(.isButton)
                .font(.largeTitle)
                .foregroundColor(.red)
//                .resizable()
                .frame(width: 40, height: 50)
                .foregroundColor(.black)
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                Text(details)
                    .font(.subheadline)
                    .foregroundColor(.secondary)

            }
        }
    }
}

