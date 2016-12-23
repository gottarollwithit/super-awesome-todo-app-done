import com.gottarollwithit.todo.model.Account;
import com.gottarollwithit.todo.service.AccountService;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mockito;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class AuthenticationTest {
    private AccountService accountService;
    private Account test;

    @Before
    public void mockBeans() {
        accountService = Mockito.mock(AccountService.class);
        test = Mockito.mock(Account.class);
    }

    @Test
    public void getAccountTest() {
        Account account = new Account();
        account.setEmail("test@test.com");
        account.setUsername("test");
        account.setPassword("12345");

        System.out.println("Stubbing accountService.getAccountByUsername('test') to temp account with \n" +
                "username: test\n" +
                "email: test@test.com\n" +
                "password:" + new BCryptPasswordEncoder().encode("12345"));
        Mockito.when(accountService.getAccountByUsername("test")).thenReturn(account);

        System.out.println("verify accountService Not Null");
        Assert.assertNotNull(accountService);
        test = accountService.getAccountByUsername("test");
        Assert.assertEquals(test, account);
    }
}