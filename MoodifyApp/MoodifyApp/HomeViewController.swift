//
//  HomeViewController.swift
//  MIT Blueprint
//
//  Created by Kenneth Choi on 2/21/21.
//
import UIKit

class HomeViewController: UIViewController{
    
    let headLabel = UILabel()
    //let button00 = CheckBox(value: 0) i tried this? to no avail sad
    var button00 = UIButton()
    let button01 = UIButton()
    let button02 = UIButton()
    let button03 = UIButton()

    
    override func viewDidLoad() {
        
        self.view.addSubview(headLabel)
        headLabel.backgroundColor = .black
        headLabel.text = "Hello Blueprint! Choose your mood."
        headLabel.textColor = .white
        //headLabel.layer.cornerRadius = 4
        headLabel.textAlignment = .center
        
        headLabel.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            headLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            headLabel.heightAnchor.constraint(equalToConstant: 50),
            headLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            headLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
            
        ])
        
        self.view.addSubview(button00)
        button00.backgroundColor = .gray
        button00.setTitle("😄", for: .normal)
        button00.addTarget(self, action: #selector(toggleButton00(_:)), for: .allTouchEvents)
       
        button00.layer.cornerRadius = 20
        button00.contentHorizontalAlignment = .center
        button00.titleLabel?.font = UIFont.boldSystemFont(ofSize: 100)
       
        button00.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button00.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button00.heightAnchor.constraint(equalToConstant: 300),
            button00.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5),
            button00.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -5)
        ])

        self.view.addSubview(button01)
        button01.backgroundColor = .gray
        button01.setTitle("😌", for: .normal)
        button01.addTarget(self, action: #selector(toggleButton01(_:)), for: .allTouchEvents)
       
        button01.layer.cornerRadius = 20
        button01.contentHorizontalAlignment = .center
        button01.titleLabel?.font = UIFont.boldSystemFont(ofSize: 100)
       
        button01.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button01.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8),
            button01.heightAnchor.constraint(equalToConstant: 300),
            button01.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 5),
            button01.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5)
        ])
        
        self.view.addSubview(button02)
        button02.backgroundColor = .gray
        button02.setTitle("😔", for: .normal)
        button02.addTarget(self, action: #selector(toggleButton02(_:)), for: .allTouchEvents)
       
        button02.layer.cornerRadius = 20
        button02.titleLabel?.font = UIFont.boldSystemFont(ofSize: 100)
        button02.contentHorizontalAlignment = .center
       
        button02.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button02.topAnchor.constraint(equalTo: button00.bottomAnchor, constant: 8),
            button02.heightAnchor.constraint(equalToConstant: 300),
            button02.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5),
            button02.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -5)
        ])
        
        self.view.addSubview(button03)
        button03.backgroundColor = .gray
        button03.setTitle("😢", for: .normal)
        button03.addTarget(self, action: #selector(toggleButton03(_:)), for: .allTouchEvents)
       
        button03.titleLabel?.font = UIFont.boldSystemFont(ofSize: 100)
        button03.layer.cornerRadius = 20
        button03.contentHorizontalAlignment = .center
       
        button03.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button03.topAnchor.constraint(equalTo: button00.bottomAnchor, constant: 8),
            button03.heightAnchor.constraint(equalToConstant: 300),
            button03.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 5),
            button03.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5)
        ])
        
    }
    
    @objc func toggleButton00(_ sender: UIButton!) {
        sender.isSelected = !sender.isSelected
        
        if button00.isSelected {
            button00.backgroundColor = .green
        } else {
            button00.backgroundColor = .gray
        }
    }
    
    @objc func toggleButton01(_ sender: UIButton!) {
        sender.isSelected = !sender.isSelected
        
        if button01.isSelected {
            button01.backgroundColor = .green
        } else {
            button01.backgroundColor = .gray
        }
    }
    
    @objc func toggleButton02(_ sender: UIButton!) {
        sender.isSelected = !sender.isSelected
        
        if button02.isSelected {
            button02.backgroundColor = .green
        } else {
            button02.backgroundColor = .gray
        }
    }
    
    @objc func toggleButton03(_ sender: UIButton!) {
        sender.isSelected = !sender.isSelected
        
        if button03.isSelected {
            button03.backgroundColor = .green
        } else {
            button03.backgroundColor = .gray
        }
    }
    
}

import SwiftUI
// This struct from SwiftUI shows us the content preview in the canvas page.
struct MainPreview: PreviewProvider {
    static var previews: some View {
        Group {
            ContainerView().edgesIgnoringSafeArea(.all)
            ContainerView().edgesIgnoringSafeArea(.all)
        }
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        

            func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
                return UINavigationController(rootViewController: HomeViewController())
            }

            func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {

            }
    }
}
