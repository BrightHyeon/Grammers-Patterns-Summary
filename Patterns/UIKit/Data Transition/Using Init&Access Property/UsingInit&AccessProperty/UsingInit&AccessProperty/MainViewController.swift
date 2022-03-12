//
//  MainViewController.swift
//  UsingInit&AccessProperty
//
//  Created by HyeonSoo Kim on 2022/03/12.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    //MARK: Properties
    private lazy var initButton: UIButton = {
        let button = UIButton()
        button.setTitle("Using init", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
        return button
    }()
    
    private lazy var propertyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Access Property", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
        return button
    }()
    
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setting NavBar
        setupNavigationBar()
        
        //Setting Button Layout
        setupLayout()
    }
}


//MARK: Private Setup Functions
private extension MainViewController {
    func setupNavigationBar() {
        self.navigationItem.title = "Transition in NavC"
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func setupLayout() {
        [
            initButton,
            propertyButton
        ].forEach { view.addSubview($0) }
        
        initButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(150)
            $0.leading.trailing.equalToSuperview()
        }
        propertyButton.snp.makeConstraints {
            $0.top.equalTo(initButton.snp.bottom).offset(150)
            $0.leading.trailing.equalToSuperview()
        }
    }
}
