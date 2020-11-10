let user  = {
    email: "sem email",
    id: "sem id",
   
    account: function() {
      return `${this.email} ${this.id}`;
    }
  };
   
  let userPremium = {
      __proto__: user,
      supportsMultipleDevices: false
  };
   
  let familyPremium = {	
      __proto__: userPremium,
      supportsMultipleDevices: true
  };
   
  let user1234 = {
      __proto__: familyPremium,
      email: "user1234@email.com",
      id: "1234"
  };
   
  let user4567 = {
      __proto__: userPremium,
      email: "user4567@email.com",
      id: "4567"
  };
  
  let user_sem_id = {
      __proto__: userPremium,
      email: "user_sem_id@email.com",
  };
  
  console.log("--------------------------");
  console.log(user1234.supportsMultipleDevices);
  console.log(user1234.id);
  console.log(user1234.account()); 
  console.log("--------------------------");
  console.log(user4567.supportsMultipleDevices);
  console.log(user4567.id); 
  console.log(user4567.account()); 	
  console.log("--------------------------");
  console.log(user_sem_id.supportsMultipleDevices); 
  console.log(user_sem_id.id); 
  console.log(user_sem_id.account()); 