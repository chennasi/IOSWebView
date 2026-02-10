import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        view = webView
        
        let myURL = URL(string: "https://sb.shiprist.com") // Replace with your URL
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
