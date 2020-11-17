//
//  TableViewController.swift
//  atrasc-club-App
//
//  Created by 坂口美月 on 2020/11/16.
//  Copyright © 2020 坂口美月. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //クラブ活動一覧
    var clubs: [(text: String, imageName: String)] = [("野球部","baseball"),("サッカー・フットサル部","soccer"),("鉄道愛好会","tetsudou"),("芸術鑑賞部","movie"),("ボウリング部","bowling"),("卓球部","takkyu"),("プログラミング同好会","programming")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    //セクションの数を返す
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //セクションごとの行数を返す
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clubs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

           cell.textLabel?.text = clubs[indexPath.row].text
           cell.imageView?.image = UIImage(named: clubs[indexPath.row].imageName)

           return cell
       }

}
