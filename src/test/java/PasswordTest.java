//import com.codeup.adlister.dao.DaoFactory;
//import com.codeup.adlister.models.User;
//import com.codeup.adlister.util.Password;
//import org.junit.Test;
//import static org.junit.Assert.*;
//
//public class PasswordTest {
//  @Test
//  public void updatePassword(){
//
//     DaoFactory
//       .getUsersDao()
//       .all()
//       .forEach(user -> {
//         user.setPassword(Password.hash(user.getPassword()));
//         DaoFactory.getUsersDao().update(user);
//         });
//  }
//}
