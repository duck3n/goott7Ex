package Mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import DAO.hwang_memberDao;
import connection.MailAuth;

public class MailSend {
 
    public void MailSend() {
    	//나중에 수정 할 예정 
    	String subject ="제목이야요";//제목 부분
    	String body = "내용ez 말입니다.";//내용 부분
    	//*************************************************************************
    	
        Properties prop = System.getProperties();
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "smtp.naver.com");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.port", "587");
        
        Authenticator auth = new MailAuth();
        
        Session session = Session.getDefaultInstance(prop, auth);
        
        MimeMessage msg = new MimeMessage(session);
    
        try {
            msg.setSentDate(new Date());
            
            msg.setFrom(new InternetAddress("sidsound123@naver.com", "VISITOR"));     //받는사람메일에 보여질 이름

            //DAO 가져옴 
            hwang_memberDao dao = new hwang_memberDao();
            
            //전체 이메일 가져오기
            String[] emailList = dao.getAllEmail();
            
            //보낼 회원 수
            InternetAddress[] toAddr = new InternetAddress[emailList.length]; 
            
            //회원 아이디들을  위 배열에 적용
            for(int x=0; x< emailList.length; x++) {
            	toAddr[x] = new InternetAddress(emailList[x]); 
            }

//            toAddr[4] = new InternetAddress ("AAAAAAAAAA@mail.com"); 
//            toAddr[5] = new InternetAddress ("LLLLLLLLLL@mail.com"); 
//            toAddr[6] = new InternetAddress ("SSSSSSSSSS@mail.com"); 
//            toAddr[7] = new InternetAddress ("DDDDDDDDDD@mail.comm"); 
//            toAddr[8] = new InternetAddress ("MMMMMMMMMM@mail.com"); 
//            toAddr[9] = new InternetAddress ("UUUUUUUUUU@mail.com");
			/**************************** 여기 까지임 *****************************/
            
            //보내는 부분
            msg.setRecipients(Message.RecipientType.TO, toAddr); //수신자 목록 적용
            
            msg.setSubject(subject, "UTF-8");//제목 적용
            msg.setText(body, "UTF-8");//내용 적용  
            
            Transport.send(msg);//전송!
            
        } catch(AddressException ae) {            
            System.out.println("AddressException : " + ae.getMessage());           
        } catch(MessagingException me) {            
            System.out.println("MessagingException : " + me.getMessage());
        } catch(UnsupportedEncodingException e) {
            System.out.println("UnsupportedEncodingException : " + e.getMessage());			
        }
                
    }


}