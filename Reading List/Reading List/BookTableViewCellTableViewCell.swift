//
//  BookTableViewCellTableViewCell.swift
//  Reading List
//
//  Created by Aaron on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class BookTableViewCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var hasBeenReadToggleButton: UIButton!
    
    var book: Book?
    
    var delegate: BookTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateViews() {
        bookLabel.text = book?.title
        hasBeenReadToggleButton.setImage(UIImage.init(named: "checked"), for: UIControl.State.normal)
    }
    
    @IBAction func toggleButtonPressed(_ sender: Any) {
         toggleHasBeenRead(for cell: IndexView.row)
    }
    

}
