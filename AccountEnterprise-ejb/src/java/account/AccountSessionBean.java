package account;

import javax.ejb.Remove;
import javax.ejb.Stateful;

/**
 *
 * @author shelc
 */
@Stateful
public class AccountSessionBean implements AccountSessionBeanRemote {

    float balance = 0;

    public float deposit(float amount) {

        balance += amount;

        return balance;

    }

    public float withdraw(float amount) {

        balance -= amount;

        return balance;

    }

    @Remove

    public void remove() {

        balance = 0;

    }
}
