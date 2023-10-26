//
//  ContactsViewController.swift
//  Month4-Homework2
//
//  Created by Mac User on 26/10/23.
//

import UIKit

class ContactsViewController: UIViewController {

    private let contactsTV = UITableView()
    private var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "My Contacts"
        allConstaints()
    }
    private func  allConstaints(){
        setUpConstraintsForContactsTV()
        setData()
    }
     
    private func setData() {
        contacts = [
            Contact(image: "jane", name: "Jane Cooper", phoneNumber: "(270) 555-0117"),
            Contact(image: "Devon2", name: "Devon Lane", phoneNumber: "(308) 555-0121"),
            Contact(image: "Darell", name: "Darrell Steward", phoneNumber: "(684) 555-0102"),
            Contact(image: "Devon", name: "Devon Lane", phoneNumber: "(704) 555-0127"),
            Contact(image: "Courthney", name: "Courtney Henry", phoneNumber: "(505) 555-0125"),
            Contact(image: "Wade", name: "Wade Warren", phoneNumber: "(225) 555-0118"),
            Contact(image: "Bessie", name: "Bessie Cooper", phoneNumber: "(406) 555-0120"),
            Contact(image: "Robert", name: "Robert Fox", phoneNumber: "(480) 555-0103"),
            Contact(image: "Jacob", name: "Jacob Jones", phoneNumber: "(702) 555-0122"),
            Contact(image: "Jenny", name: "Jenny Wilson", phoneNumber: "(239) 555-0108")
        ]
    }
    
    private func setUpConstraintsForContactsTV(){
        view.addSubview(contactsTV)
        contactsTV.translatesAutoresizingMaskIntoConstraints = false
        contactsTV.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        contactsTV.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contactsTV.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contactsTV.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contactsTV.dataSource = self
        contactsTV.delegate = self
    }
}
extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")

        cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[(indexPath.row)].phoneNumber
        return cell
    }

    

}
