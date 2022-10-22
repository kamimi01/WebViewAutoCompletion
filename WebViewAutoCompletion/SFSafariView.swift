//
//  SFSafariView.swift
//  WebViewAutoCompletion
//
//  Created by mikaurakawa on 2022/10/22.
//

import Foundation
import SafariServices
import SwiftUI

struct SFSafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SFSafariView>) -> SFSafariViewController {
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.dismissButtonStyle = .close

        return safariViewController
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariView>) {
    }
}
