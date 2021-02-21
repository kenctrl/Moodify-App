//
//  SongTableViewCell.swift
//  MIT Blueprint
//
//  Created by Elizabeth on 2/21/21.
//

import Foundation
import UIKit

class SongTableViewCell: UITableViewCell {
    
    
    // Other properties of a song
    let name = UILabel()
    let artists = UILabel()
    let year = UILabel()
    
    // IMPORTANT: Every type of cell must have a cell identifier so the TableView can deque it
    static let cellId = "SongCell"
    
    // initializes a cell with a style and identifier
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .systemBackground
    }
    
    // required protocol when subclassing some UI classes
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // Build our cell's views!
    func setupViews() {
        
        addSubview(name)
        addSubview(artists)
        addSubview(year)
        
    
        
        // title positioning
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
            name.heightAnchor.constraint(equalToConstant: 180),
            name.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            name.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -262)
        ])
        
        name.backgroundColor = .blue
        name.textColor = .white
        name.layer.cornerRadius = 20
        name.textAlignment = .center
        
        // artist positioning
        artists.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            artists.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
            artists.heightAnchor.constraint(equalToConstant: 180),
            artists.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 132),
            artists.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -132)
            
        ])
        
        artists.backgroundColor = .red
        artists.textColor = .white
        artists.layer.cornerRadius = 20
        artists.textAlignment = .center
        
        // year positioning
        year.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            year.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
            year.heightAnchor.constraint(equalToConstant: 180),
            year.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 262),
            year.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ])
        
        year.backgroundColor = .green
        year.layer.cornerRadius = 20
        year.textAlignment = .center
        
    }
    
}
