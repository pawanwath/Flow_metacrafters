pub contract clientsHolder {
  //creating dictionary named person
    pub var person : {Address : details }
//creating struct named accountdetails
    pub struct details {
      pub let name : String
      pub let age  : UInt64
      pub let country : String
      pub let occupation : String
      pub let bankbalance : UInt64
      pub let hobby: String
      pub let account : Address

    
    // initializing struct 
    init(_name : String , _age: UInt64,_country: String, _occupation: String , _bankbalance : UInt64 ,_hobby : String, _account  : Address ){

      self.name = _name
      self.age = _age 
      self.country = _country
      self.occupation = _occupation
      self.bankbalance = _bankbalance
      self.hobby = _hobby
      self.account = _account

      
    }
    }
//creating function for transaction 
    pub fun insert(name:String , age  : UInt64 ,country:String , occupation  :String, bankbalance : UInt64 ,hobby: String, account : Address ){
       let newentry  = details(_name:name , _age:age ,_country: country, _occupation:occupation , _bankbalance:bankbalance, _hobby : hobby,_account : account )
    
       self.person[account] = newentry
       
    }
  //initializing dictionary here 
    init(){
      self.person = {}
    }
}
