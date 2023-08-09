import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAppCheck

//class TeenfullyAppCheckProviderFactory: NSObject, AppCheckProviderFactory {
//    func createProvider(with app: FirebaseApp) -> AppCheckProvider? {
//        if #available(iOS 14.0, *) {
//            return AppAttestProvider(app: app)
//        } else {
//            return DeviceCheckProvider(app: app)
//        }
//    }
//}

//TODO re-do the front-end to not use offsets
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        let providerFactory = AppCheckDebugProviderFactory()
//        AppCheck.setAppCheckProviderFactory(providerFactory)
        
        FirebaseApp.configure()
        return true
    }
}


struct YourApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SignInView()
            }
        }
    }
}
