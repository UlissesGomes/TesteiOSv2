//
//  StatementViewController.swift
//  BankApp
//
//  Created by Ulisses Gomes on 03/04/20.
//  Copyright (c) 2020 Ulisses Gomes. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol StatementDisplayLogic: class {
    func displayStatements(viewModel: Statements.StatementList.ViewModel)
}

class StatementViewController: UIViewController, StatementDisplayLogic, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var agencyAccount: UILabel!
    @IBOutlet weak var balance: UILabel!
    
    var statementsList: Statements.StatementList.ViewModel = Statements.StatementList.ViewModel(statements: [])
    
    var interactor: StatementBusinessLogic?
    var router: (NSObjectProtocol & StatementRoutingLogic & StatementDataPassing)?
    
    // MARK: Object lifecycle
    
   
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = StatementInteractor()
        let presenter = StatementPresenter()
        let router = StatementRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UINib.init(nibName: "StatementCell", bundle: nil), forCellReuseIdentifier: "statementCell")
        let userId = getUserData()
        fetchStatements(userId: userId)
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func getUserData() -> Int{
        if let userAccount = router?.dataStore?.userAccount {
            name.text = userAccount.name
            balance.text = "R$ \(String(format: "%.2f",userAccount.balance))"
            agencyAccount.text = "\(userAccount.account) / \(userAccount.agency)"
            return userAccount.userId
        }
        return -1
    }
    
    func fetchStatements(userId: Int) {
        let request = Statements.StatementList.Request(userId: userId)
        interactor?.getStatements(request: request)
    }
    
    func displayStatements(viewModel: Statements.StatementList.ViewModel) {
        statementsList = viewModel
        tableView.reloadData()
    }
    
    //TableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statementCell", for: indexPath) as! StatementCell
        cell.build(statement: statementsList.statements[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return statementsList.statements.count
    }
    
    @IBAction func exit(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
   
}
