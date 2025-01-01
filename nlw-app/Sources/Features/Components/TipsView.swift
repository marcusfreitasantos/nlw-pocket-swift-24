//
//  TipsView.swift
//  nlw-app
//
//  Created by Marcus Freitas on 30/12/24.
//

import Foundation
import UIKit

public class TipsView: UIView{
    
    private let iconImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(icon: UIImage, title: String, description: String){
        super.init(frame: .zero)
        setupUI()
        setupComponent(icon: icon, title: title, description: description)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupComponent(icon: UIImage, title: String, description: String){
        iconImageView.image = icon
        titleLabel.text = title
        descriptionLabel.text = description
    }
    
    private func setupUI(){
        self.addSubview(iconImageView)
        self.addSubview(titleLabel)
        //self.addSubview(descriptionLabel)
    }
    
    private func setupConstraints(){
        let iconImageViewSizeConstant: CGFloat = 24
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            iconImageView.topAnchor.constraint(equalTo: self.topAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: iconImageViewSizeConstant),
            iconImageView.widthAnchor.constraint(equalToConstant: iconImageViewSizeConstant),
            
            titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 24),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            //titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
        
    
    
}
