//
//  CustomCell.swift
//  PhotoScavengerHunt
//
//  Created by Gabe Jones on 3/17/23.
//

import UIKit

class CustomCell: UITableViewCell {
    
    static let identifier = "CustomCell"

    //MARK: - UI Components
    let completedImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    //MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Configuration
    func configure(with task: Task){
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }
    
    //MARK: - Setup UI
    func setupUI(){
        contentView.addSubview(titleLabel)
        contentView.addSubview(completedImageView)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        completedImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            
            completedImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            completedImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            completedImageView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor)
        ])
    }
}
