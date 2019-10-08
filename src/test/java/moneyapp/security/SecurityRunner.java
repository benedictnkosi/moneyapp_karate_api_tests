package moneyapp.security;

import com.intuit.karate.junit5.Karate;

class SecurityRunner {
    
    @Karate.Test
    Karate testUsers() {
        return new Karate().feature("login").relativeTo(getClass());
    }    

}
