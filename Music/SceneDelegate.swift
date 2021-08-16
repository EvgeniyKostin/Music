//
//  SceneDelegate.swift
//  Music
//
//  Created by Evgeniy Kostin on 16.08.2021.
//

import UIKit

//SceneDelegate пришел с 11-ой версией Xcode, для того чтобы новый фреймворк SwiftUI работал успешно
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow? //отвечает за текущее окно нашего приложения. Необходимо сделать так, чтобы MainTabBarController был в качестве главного экрана.


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)          //1-ое, инициализируем свойство window
        window?.makeKeyAndVisible()                          //2-ое, у свойства window вызываем метод makeKeyAndVisible
        window?.rootViewController = MainTabBarController()  //3-ее, у свойства window вызываем метод rootViewController, которое определяет, что будет в качестве главного экрана
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

