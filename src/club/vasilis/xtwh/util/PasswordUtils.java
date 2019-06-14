package club.vasilis.xtwh.util;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

/**
 * @author Vasilis
 * @date 2019/3/28 -11:09
 */

public class PasswordUtils {
    public static String md5(String password,String salt){
        Md5PasswordEncoder encoder = new Md5PasswordEncoder();
        return encoder.encodePassword(password, salt);
    }


    public static void main(String[] args) {
        String pwd = PasswordUtils.md5("123456","vasilis");
        System.out.println(pwd);
    }
}
