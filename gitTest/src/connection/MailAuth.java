package connection;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
    PasswordAuthentication pa;
    
    public MailAuth() {
        String mail_id = "sidsound123";//아이디
        String mail_pw = "ckdgkr67!!";//비밀번호
        
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}
