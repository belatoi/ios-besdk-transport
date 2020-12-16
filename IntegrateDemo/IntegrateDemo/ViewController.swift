//
//  ViewController.swift
//  IntegrateDemo
//
//  Created by duong.pham on 10/23/20.
//

import UIKit
import BESDK

class ViewController: UIViewController {

    lazy var beButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(showBeTransport), for: .touchUpInside)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.7333333333, blue: 0, alpha: 1)
        button.setTitle("Go with be", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0.231372549, alpha: 1), for: .normal)
        button.setTitleShadowColor(UIColor.black.withAlphaComponent(0.2), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(beButton)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let viewSize = view.bounds.size
        var buttonSize = beButton.sizeThatFits(viewSize)
        buttonSize = CGSize(width: buttonSize.width + 20, height: buttonSize.height + 20)
        beButton.frame = CGRect(origin: CGPoint(x: (viewSize.width - buttonSize.width)/2.0, y: (viewSize.height - buttonSize.height)/2.0), size: buttonSize)
    }

    @objc func showBeTransport() {
        let beController = BETransportSDK.shared.instance(with: "cde998659354f905e9ee0a6715c05e3c8d55bc88a9103b11937e69b006052784", language: .vi)
        self.present(beController, animated: true, completion: nil)
    }
}

