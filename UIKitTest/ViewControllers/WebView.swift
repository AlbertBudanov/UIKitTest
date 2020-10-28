//
//  WebView.swift
//  UIKitTest
//
//  Created by Альберт on 24.10.2020.
//

import UIKit

class WebView: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var myWebView: UIWebView!
    @IBOutlet var goBackItem: UIBarButtonItem!
    @IBOutlet var goForwardItem: UIBarButtonItem!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    let application = UIApplication.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myWebView.delegate = self
        myWebView.scalesPageToFit = true
        if let urlPdf = Bundle.main.url(forResource: "Pdf", withExtension: "pdf") {
            
            //        guard let myURL = URL(string: "https://www.google.com") else {return}
            //        let request = URLRequest(url: myURL)
            let request = URLRequest(url: urlPdf)
            
            
            //        print(myURL.port, myURL.user, myURL.scheme)
            
            myWebView.loadRequest(request)
        }
    }
    
    //    MARK: Method
    
    func workIndicator(isAnimated: Bool, indicator: UIActivityIndicatorView) {
        if isAnimated {
            myActivityIndicator.startAnimating()
            myActivityIndicator.isHidden = false
        } else {
            myActivityIndicator.stopAnimating()
            myActivityIndicator.isHidden = true
        }
    }
    //    MARK: UIWebViewDelegate
    func webViewDidStartLoad(_ webView: UIWebView) {
        workIndicator(isAnimated: true, indicator: myActivityIndicator)
        self.goBackItem.isEnabled = false
        self.goForwardItem.isEnabled = false
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        workIndicator(isAnimated: false, indicator: myActivityIndicator)
        if myWebView.canGoBack {
            goBackItem.isEnabled = true
        } else if
            myWebView.canGoForward {
            goForwardItem.isEnabled = true
        }
    }
    
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool {
        print("shouldStartLoadWith = ", request)
        return true
    }
    
    // MARK: Actions
    @IBAction func goBackAction(_ sender: Any) {
        if myWebView.canGoBack {
            myWebView.goBack()
        }
    }
    
    @IBAction func goForwardAction(_ sender: Any) {
        if myWebView.canGoForward {
            myWebView.goForward()
        }
    }
    
    @IBAction func refreshAction(_ sender: Any) {
        myWebView.reload()
    }
    
    
}
