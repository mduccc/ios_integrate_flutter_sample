import UIKit
import Flutter

class FlutterSectionController: UIViewController {
    
    private var label: UILabel = {
           let label = UILabel()
           label.translatesAutoresizingMaskIntoConstraints = false
           label.font = UIFont.preferredFont(forTextStyle: .title1)
           label.text = "Hello, UIKit!"
           label.textAlignment = .center
           label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UIGestureRecognizer(target: view.self, action: Selector(("openFlutterApp")))

        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tap)
        view.backgroundColor = .systemBlue
   
        view.addSubview(label)
        NSLayoutConstraint.activate([
                   label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                   label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
                   label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
               ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let flutterViewController = FlutterViewController(
          project: nil,
          nibName: nil,
          bundle: nil)
        flutterViewController.modalPresentationStyle = .currentContext
        flutterViewController.isViewOpaque = true
        present(flutterViewController, animated: true)
        
    }
    
    
    func openFlutterApp() {
        // Get the RootViewController.
        print("openFlutterApp")
        guard
            let windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive && $0 is UIWindowScene }) as? UIWindowScene,
          let window = windowScene.windows.first(where: \.isKeyWindow),
          let rootViewController = window.rootViewController
        else { return }

        // Create the FlutterViewController without an existing FlutterEngine.
        let flutterViewController = FlutterViewController(
          project: nil,
          nibName: nil,
          bundle: nil)
        flutterViewController.modalPresentationStyle = .currentContext
        flutterViewController.isViewOpaque = false

        rootViewController.present(flutterViewController, animated: true)
      }

   

}

