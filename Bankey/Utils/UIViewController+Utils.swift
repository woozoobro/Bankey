//
//  UIViewController+Utils.swift
//  Bankey
//
//  Created by 우주형 on 2023/12/03.
//

import UIKit

extension UIViewController {
  
  func setStatusBar() {
    let navBarAppearance = UINavigationBarAppearance()
    navBarAppearance.configureWithTransparentBackground()
    UINavigationBar.appearance().standardAppearance = navBarAppearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
  }
  
  func setTabBarImage(imageName: String, title: String) {
    let configuration = UIImage.SymbolConfiguration(scale: .large)
    let image = UIImage(systemName: imageName, withConfiguration: configuration)
    tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
  }
}
