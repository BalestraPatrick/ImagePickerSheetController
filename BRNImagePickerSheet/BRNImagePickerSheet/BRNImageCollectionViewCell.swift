//
//  BRNImageCollectionViewCell.swift
//  BRNImagePickerSheet
//
//  Created by Laurin Brandner on 06/09/14.
//  Copyright (c) 2014 Laurin Brandner. All rights reserved.
//

import UIKit

class BRNImageCollectionViewCell : UICollectionViewCell {
    
    let imageView = UIImageView()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initialize()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.initialize()
    }
    
    private func initialize() {
        self.addSubview(self.imageView)
    }
    
    // MARK: - Other Methods
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.imageView.image = nil
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.imageView.frame = self.bounds
    }
}
