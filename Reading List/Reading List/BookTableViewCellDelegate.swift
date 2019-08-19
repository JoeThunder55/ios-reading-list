//
//  BookTableViewCellDelegate.swift
//  Reading List
//
//  Created by Aaron on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol BookTableViewCellDelegate {
   func toggleHasBeenRead(for cell: BookTableViewCellTableViewCell)
}
