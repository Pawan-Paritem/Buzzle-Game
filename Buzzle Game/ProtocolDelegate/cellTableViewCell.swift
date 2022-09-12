//
//  cellTableViewCell.swift
//  ProtocolDelegate
//
//  Created by Ninesol Tech on 16/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

protocol TableViewDelegate {
    func didTapAcceptButton(cell : cellTableViewCell)
    func didTapRejectButton(cell: cellTableViewCell)
}

class cellTableViewCell: UITableViewCell {
    

    @IBOutlet weak var namelbl: UILabel!
    
    var delegate: TableViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func CustomCellForTableView(tableView: UITableView) -> cellTableViewCell {
         let newCell =  "Cell"
        tableView.register(UINib(nibName: "cellTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: newCell)
        let cell = tableView.dequeueReusableCell(withIdentifier: newCell) as! cellTableViewCell
        return cell
    
    }
   
    
    @IBAction func rejectBtn(_ sender: UIButton) {
        delegate?.didTapAcceptButton(cell: self)
    }
    
    @IBAction func acceptBtn(_ sender: UIButton) {
        delegate?.didTapAcceptButton(cell: self)
    }
}
