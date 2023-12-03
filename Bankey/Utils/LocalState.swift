//
//  LocalState.swift
//  Bankey
//
//  Created by 우주형 on 2023/12/03.
//
import Foundation

public class LocalState {
  
  private enum Keys: String {
    case hasOnboarded
  }
  
  public static var hasOnboarded: Bool {
    get { return UserDefaults.standard.bool(forKey: Keys.hasOnboarded.rawValue) }
    set(newValue) {
      UserDefaults.standard.set(newValue, forKey: Keys.hasOnboarded.rawValue)
      UserDefaults.standard.synchronize()
    }
  }
}
