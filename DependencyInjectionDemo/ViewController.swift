//
//  ViewController.swift
//  DependencyInjectionDemo
//
//  Created by kirtiparghi on 2021-05-08.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableview: UITableView!
    var data = [EmailAccount]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        data = models()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let account = data[indexPath.row]
        cell.textLabel?.text = account.domain
        return cell
    }
    
    func models() -> [EmailAccount] {
        return [Gmail(), Yahoo(), Outlook()]
    }
}

protocol EmailAccount {
    var username: String { get }
    var domain: String { get }
    var lastEmailReceived: Date { get }
}

class Gmail : EmailAccount {
    var username: String {
        return "john"
    }
    
    var domain: String {
        return "gmail.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}

class Yahoo : EmailAccount {
    var username: String {
        return "john"
    }
    
    var domain: String {
        return "yahoo.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
    
}

class Outlook: EmailAccount {
    var username: String {
        return "john"
    }
    
    var domain: String {
        return "outlook.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
    
}
