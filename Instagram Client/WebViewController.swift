//
//  WebKit.swift
//  Instagram Client
//
//  Created by Max on 13/07/2020.
//  Copyright © 2020 Max. All rights reserved.
//

import Foundation

import WebKit
class WebViewController: UIViewController, WKNavigationDelegate {
    var instagramApi: InstagramApi?
    var testUserData: InstagramTestUser?
    var mainVC: ViewController?
    var token: String?
    
    @IBOutlet var webView: WKWebView! {
        didSet {
          webView.navigationDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instagramApi?.authorizeApp { (url) in
        DispatchQueue.main.async {
         self.webView.load(URLRequest(url: url!))
        }
      }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let request = navigationAction.request
        self.instagramApi?.getTestUserIDAndToken(request: request) { [weak self] (instagramTestUser) in
            self?.testUserData = instagramTestUser
            print(instagramTestUser)
            DispatchQueue.main.async {
            self?.dismissViewController()
            }
        }
//        token = self.instagramApi?.getTokenFromCallbackURL(request: request)
//        print("TOKEN:", token)
//        self.dismissViewController()
        decisionHandler(WKNavigationActionPolicy.allow)
    }
    
    func dismissViewController() {
      self.dismiss(animated: true) {
//        self.mainVC?.testUserData.access_token = self.token
//        self.mainVC?.testUserData = self.testUserData!
      }
    }
    
    

}
