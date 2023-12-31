import clientsHolder from 0x05 //imported holder contract
//using systax for trasaction 
transaction(name:String , age:UInt64 ,country:String, occupation:String , bankbalance: UInt64,hobby: String, account: Address){
  //verifying user who is chnaging data in contract holder
   prepare(signer : AuthAccount){
    log(signer)
   }

  //using execute statement inserting new value of parameters of person for specific address
   execute {
    clientsHolder.insert(name: name, age: age, country: country, occupation: occupation, bankbalance: bankbalance, hobby: hobby, account: account) 
     //giving msg that all insertion is sucessfully done 
    log("Succsessfully logged aacount information ! ")
   }
}
