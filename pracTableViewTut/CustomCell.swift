//
//  CustomCell.swift
//  pracTableViewTut
//  Created by DA MAC M1 157 on 2023/08/23.

import UIKit

class CustomCell: UITableViewCell {
    
    public static let identifier = "CustomCell"
    
    private let cellLayer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        view.layer.cornerRadius = 10
        view.layer.shadowOffset = CGSize(width: -3, height: 7)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 5
        return view
    }()
    
    public let productImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "brain.head.profile")
        imageView.contentMode = .scaleToFill
        
        
        imageView.layer.shadowOffset = CGSize(width: -3, height: 7)
        imageView.layer.shadowOpacity = 0.7
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowRadius = 5
        
        return imageView
    }()
    
    private let productName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "AvenirNext-DemiBold,", size: 25)
        label.text = "Leather Chair"
        label.textColor = UIColor.label
        label.numberOfLines = 1
        
        label.layer.shadowOffset = CGSize(width: -3, height: 7)
        label.layer.shadowColor = UIColor.systemYellow.cgColor
        label.layer.shadowOpacity = 0.7
        return label
    }()
    
    private let productDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is text copy that serves to fill a space without saying anything meaningful."
        label.textColor = UIColor.secondaryLabel
        label.font = UIFont(name: "Avenir-Book", size: 12)
        label.numberOfLines = 3
        return label
    }()
    
    private let productPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "R1300.00"
        label.textColor = UIColor.lightGray
        label.font = UIFont(name: "AvenirNext", size: 21)
        label.numberOfLines = 1
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUI()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
   
    }
   
    func setupUI() {
        contentView.addSubview(cellLayer)
        contentView.addSubview(productImage)
        contentView.addSubview(productName)
        contentView.addSubview(productDescription)
        contentView.addSubview(productPrice)
        setupConstraints()
    }
    
    func setupConstraints() {
        let composeCellLayerConstraints = [
            cellLayer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellLayer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            cellLayer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            cellLayer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        
        let composeProductImageConstraints = [
            productImage.topAnchor.constraint(equalTo: cellLayer.topAnchor, constant: 15),
            productImage.leadingAnchor.constraint(equalTo: cellLayer.leadingAnchor, constant: 10),
            productImage.bottomAnchor.constraint(equalTo: cellLayer.bottomAnchor, constant: -15),
            //productImage.trailingAnchor.constraint(equalTo: cellLayer.trailingAnchor, constant: -10),
            productImage.widthAnchor.constraint(equalToConstant: 100),
            productImage.heightAnchor.constraint(equalToConstant: 120)
        ]
        
        let composeProductNameConstraints = [
            productName.topAnchor.constraint(equalTo: productImage.topAnchor),
            productName.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 10),
            productName.trailingAnchor.constraint(equalTo: cellLayer.trailingAnchor, constant: -2),
        ]
        
        let composeProductDescriptionConstraints = [
            productDescription.topAnchor.constraint(equalTo: productName.bottomAnchor, constant: 2),
            productDescription.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant: 10),
            productDescription.trailingAnchor.constraint(equalTo: cellLayer.trailingAnchor, constant: -2),
        ]
        
        let composePoductPriceConstraints = [
            productPrice.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 2),
            productPrice.leadingAnchor.constraint(equalTo: productImage.trailingAnchor, constant:   10),
            productPrice.trailingAnchor.constraint(equalTo: cellLayer.trailingAnchor, constant: -10),
            productPrice.bottomAnchor.constraint(equalTo: productImage.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(composeCellLayerConstraints)
        NSLayoutConstraint.activate(composeProductImageConstraints)
        NSLayoutConstraint.activate(composeProductNameConstraints)
        NSLayoutConstraint.activate(composeProductDescriptionConstraints)
        NSLayoutConstraint.activate(composePoductPriceConstraints)
    }
    
}
