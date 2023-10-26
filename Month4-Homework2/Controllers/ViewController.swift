//
//  ViewController.swift
//  Month4-Homework2
//
//  Created by Mac User on 26/10/23.
//

import UIKit

class ViewController: UIViewController {

    private let loginLbl: UILabel = {
        let login = UILabel()
        login.translatesAutoresizingMaskIntoConstraints = false
        login.text = "Login"
        login.font = .systemFont(ofSize: 18, weight: .bold)
        login.textColor = UIColor.black
        return login
    }()
    
    private let logImage: UIImageView = {
        let log = UIImageView()
        log.translatesAutoresizingMaskIntoConstraints = false
        log.image = UIImage(named: "User")
        return log
    }()
    
    private let welcomeLbl: UILabel = {
        let welcome = UILabel()
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.text = "Welcome back , Rohit thakur"
        welcome.font = .systemFont(ofSize: 14, weight: .light)
        welcome.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        return welcome
    }()
    
    private let drawImage: UIImageView = {
        let draw = UIImageView()
        draw.translatesAutoresizingMaskIntoConstraints = false
        draw.image = UIImage(named: "Draw")
        return draw
    }()
    
    private let enterLbl: UILabel = {
        let enter = UILabel()
        enter.translatesAutoresizingMaskIntoConstraints = false
        enter.text = "Enter Your Mobile Number"
        enter.textColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
        enter.font = .systemFont(ofSize: 17, weight: .heavy)
        return enter
    }()
    
    private let numberTF: UITextField = {
        let num = UITextField()
        num.translatesAutoresizingMaskIntoConstraints = false
        num.textColor = .black
        num.font = .systemFont(ofSize: 13, weight: .regular)
        num.backgroundColor = .white
        num.layer.cornerRadius = 10
        num.placeholder = "Enter Number "
            return num
        }()
    
    private let changeBtn: UIButton = {
            let change = UIButton(type: .system)
            change.translatesAutoresizingMaskIntoConstraints = false
            change.setTitle("Change Number ?", for: .normal)
            change.tintColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
            change.titleLabel?.font = .systemFont(ofSize: 12, weight: .light)
            return change
        }()
    
    private let loginBtn: UIButton = {
            let login  = UIButton(type: .system)
            login.translatesAutoresizingMaskIntoConstraints = false
            login.setTitle("Login", for: .normal)
            login.backgroundColor = UIColor(red: 0.949, green: 0.475, blue: 0.42, alpha: 1)
            login.tintColor = UIColor.white
        login.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
            login.layer.cornerRadius = 10
            return login
        }()
    
    private let googleIcon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "google")
        return icon
    }()
    
    private let googleLbl: UILabel = {
        let lbl  = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Google"
        lbl.textColor = UIColor.black
        lbl.font = .systemFont(ofSize: 14, weight: .bold)
        return lbl
    }()
    
    private let youLbl: UILabel = {
        let you = UILabel()
        you.translatesAutoresizingMaskIntoConstraints = false
        you.text = "You Don’t have an account ?"
        you.textColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        you.font = .systemFont(ofSize: 12, weight: .light)
        return you
    }()
    
    private let signUp: UIButton = {
        let signup = UIButton(type: .system )
        signup.translatesAutoresizingMaskIntoConstraints = false
        signup.setTitle("Sign Up", for: .normal)
        signup.tintColor = UIColor(red: 98/255, green: 98/255, blue: 98/255, alpha: 1)
        signup.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        return signup
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor =  UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1)
        allSetUpConstraints()
    }
    private func allSetUpConstraints(){
        setUpConstraintsForLoginLbl()
        setUpConstraintsForLogImage()
        setUpConstraintsForWelcomeLbl()
        setUpConstraintsForDrawImage()
        setUpConstraintsForEnterLbl()
        setUpConstraintsForNumberTF()
        setUpConstraintsForChangeBtn()
        setUpConstraintsForLoginBtn()
        setUpConstraintsForGoogleIcon()
        setUpConstraintsForGoogleLbl()
        setUpConstraintsForYouLbl()
        setUpConstraintsForSignUpBtn()
        
    }
    private func setUpConstraintsForLoginLbl(){
        view.addSubview(loginLbl)
        loginLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 62).isActive = true
        loginLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setUpConstraintsForLogImage(){
        view.addSubview(logImage)
        logImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        logImage.leadingAnchor.constraint(equalTo: loginLbl.trailingAnchor, constant: 4).isActive = true
    }
    
    private func setUpConstraintsForWelcomeLbl(){
        view.addSubview(welcomeLbl)
        welcomeLbl.topAnchor.constraint(equalTo: loginLbl.bottomAnchor, constant: 4).isActive = true
        welcomeLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    }
    
    private func setUpConstraintsForDrawImage(){
        view.addSubview(drawImage)
        drawImage.topAnchor.constraint(equalTo: welcomeLbl.bottomAnchor, constant: 48).isActive = true
        drawImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setUpConstraintsForEnterLbl(){
        view.addSubview(enterLbl)
        enterLbl.topAnchor.constraint(equalTo: drawImage.bottomAnchor, constant: 15).isActive = true
        enterLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func setUpConstraintsForNumberTF(){
        view.addSubview(numberTF)
        numberTF.topAnchor.constraint(equalTo: enterLbl.bottomAnchor, constant: 30).isActive = true
        numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        numberTF.heightAnchor.constraint(equalToConstant: 42).isActive = true
    }
    
    private func setUpConstraintsForChangeBtn(){
        view.addSubview(changeBtn)
        changeBtn.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 10).isActive = true
        changeBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38).isActive = true
        changeBtn.heightAnchor.constraint(equalToConstant: 18).isActive = true
    }
    
    private func setUpConstraintsForLoginBtn(){
        view.addSubview(loginBtn)
        loginBtn.topAnchor.constraint(equalTo: changeBtn.bottomAnchor, constant: 34).isActive = true
               loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
               loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
               loginBtn.heightAnchor.constraint(equalToConstant: 42).isActive = true
               loginBtn.addTarget(self, action: #selector(loginBtnTapped), for: .touchUpInside)
           }
           @objc func loginBtnTapped(_ sender: UIButton) {
               var shouldNavigate = true
               
                   if numberTF.text?.isEmpty ?? true {
                       numberTF.layer.borderColor = UIColor.red.cgColor
                       numberTF.layer.borderWidth = 1
                       numberTF.placeholder = "Fill the field"
                       shouldNavigate = false
                   } else if shouldNavigate {
                       let vc = ContactsViewController()
                       navigationController?.pushViewController(vc, animated: true)
                   }
               }
    
    private func setUpConstraintsForGoogleIcon(){
        view.addSubview(googleIcon)
        googleIcon.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 44).isActive = true
        googleIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 162).isActive = true
        googleIcon.heightAnchor.constraint(equalToConstant: 25).isActive = true
        googleIcon.widthAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    private func setUpConstraintsForGoogleLbl(){
        view.addSubview(googleLbl)
        googleLbl.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 48).isActive = true
        googleLbl.leadingAnchor.constraint(equalTo: googleIcon.trailingAnchor, constant: 12).isActive = true
    }
    
    private func setUpConstraintsForYouLbl(){
        view.addSubview(youLbl)
        youLbl.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -62).isActive = true
        youLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 98).isActive = true
    }
    
    private func setUpConstraintsForSignUpBtn(){
        view.addSubview(signUp)
        signUp.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56).isActive = true
        signUp.leadingAnchor.constraint(equalTo: youLbl.trailingAnchor, constant: 5).isActive = true
    }
    }


