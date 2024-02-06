/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class usercontroller {
    
    @RequestMapping("/welcome")
    public String welcomepage(){
        return "welcome";
    }
    
    @RequestMapping("/to_login")
    public String tologin(){
        return "login_AD";
    }
    

    
    @RequestMapping("/to_register")
    public String toregister(){
        return "new_register";
    }
    

    
        

    @RequestMapping(value="/registerred_A", method=RequestMethod.POST)
    public String registered(
        @RequestParam("name")String a,
        @RequestParam("dob")String b,
        @RequestParam("address")String c,
        @RequestParam("age")String d,
        @RequestParam("gender")String z,
        @RequestParam("bloodgroup")String f,
        @RequestParam("healthissue")String g,
        @RequestParam("username")String h,
        @RequestParam("password")String i,
        @RequestParam("role")String k,
        Model m
    ){
        System.out.println(a+"  "+b);
        System.out.println(c);
        System.out.println(d);
        System.out.println(z);
        System.out.println(f);
        System.out.println(g);
        System.out.println(h);
        System.out.println(i);
        System.out.println(k);
       
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
                        PreparedStatement stmt1=con.prepareStatement("SELECT * FROM patients ORDER BY ID DESC LIMIT 1");  
            int n = 0;
           ResultSet rs = stmt1.executeQuery();
            while (rs.next()) {
                
                n=rs.getInt("ID");
            }
            int j=n+1;
            
            PreparedStatement stmt2 =con.prepareStatement("select * from patients where username = ?");
            stmt2.setString(1, h);
            ResultSet rs2 = stmt2.executeQuery();
            String a4 = null;
            while(rs2.next()){
                a4 = rs2.getString("username");
            }
            if(h.equals(a4)){
                return "register_false";
            }
            else{

            PreparedStatement stmt=con.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,?,?,?)");  
            
            stmt.setString(2, a);
            stmt.setString(3, b);
            stmt.setString(4,c);  
            stmt.setString(5,d);  
            stmt.setString(6,z);  
            stmt.setString(7,f);  
            stmt.setString(8,g);  
            stmt.setString(9,h);  
            stmt.setString(10,i);  
            stmt.setString(11,k);  
            stmt.setString(12,k);  
            stmt.setInt(1, j);
            
            
            stmt.executeUpdate();
            }
        } catch (Exception e) {
        }
        
        return "login_AD";
    }
    
    
String impn1="";
            @RequestMapping(value = "/loggined_AD", method = RequestMethod.POST)
    public String lonnggined(
            @RequestParam("username") String x,
            @RequestParam("password") String y,
            @RequestParam("role") String z,
            Model m
    ){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");

            PreparedStatement stmt=con.prepareStatement("select * from patients where username=? and password=?");  
            stmt.setString(1, x);
            stmt.setString(2,y);//1 specifies the first parameter in the query  
            
            ResultSet rs = stmt.executeQuery();
   
            String a=null,b=null,n=null;
           
            while (rs.next()) {
                a=rs.getString("username");
                b=rs.getString("password");
                n=rs.getString("role");
            }
            System.out.println(a+"  "+b+" "+n);
            System.out.println(x+"  "+y+" "+z);
            
//            if(x.equals("ADMIN")){
//                if(y.equals("AVY")){
//                    return "admin/admindashboard";
//                }
//            }
            if(x.equals(a)){
                if(y.equals(b)){
                    if(z.equals(n)){
                        System.out.println(a+" "+b+" "+n+" ");
                    
                    m.addAttribute("name",n);
                    m.addAttribute("user",x);
                    m.addAttribute("pass",y);
                    if(z.equals("doctor")){
                        impn1 = x;
                    return "admin/admindashboard";
                    }
                    else{
                        return "user/userdashboard";
                    }
                    }
                    else{
                        return "loginerror";
                    }
                }
                else{
                    
                    return "loginerror";
                }
            }
            else{
                return "loginerror";
            }
            
        } catch (Exception e) {
        }
        return "loginerror";
        
    }
    
//    admin dashboard
        
    @RequestMapping("/admindashboard")
    public String adash(
    @RequestParam("user3") String x,
            Model m1
    ){
        m1.addAttribute("user",x);
    return "admin/admindashboard";
}
    
        @RequestMapping(value="appoint_ll")
    public String adah(
            @RequestParam("user3") String x,
            Model m1
    ){
        try{
            String nam1 = null;
        Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            PreparedStatement stmt1=con.prepareStatement("select * from  patients where username=?");  
            stmt1.setString(1,x);
             ResultSet rs = stmt1.executeQuery();
             while(rs.next()){
                 nam1 = rs.getString("name");
             }
            
        m1.addAttribute("user3",x);
            System.out.println("checking the  username of admin");
            System.out.println(x);
            System.out.println(nam1);
    }catch(Exception z){
            
            }
    return "admin/appointment_doc";
}
    
    
         @RequestMapping("us_appoi_st")
    public String adavffh( @RequestParam("user") String x,
            Model m1
    ){
        m1.addAttribute("imp", x);
             System.out.println(x);
    return "user/appointment_status";
}
    
    
//    addpatient
    @RequestMapping(value = "/add_patient")
    public String addpatient(
            Map<String, Object> ob1,
            @RequestParam("user3")String u11,
            Model m
    ){
        Details nc = new Details();  
        System.out.println("in new criminal add page");
       ob1.put("pd", nc);
       m.addAttribute("user",u11);
        return "admin/addpatient";
    }
    
     @RequestMapping(value="/new_patient", method=RequestMethod.POST)
    public String registerdded(
        @RequestParam("name")String a,
        @RequestParam("dob")String b,
        @RequestParam("address")String c,
        @RequestParam("age")String d,
        @RequestParam("gender")String z,
        @RequestParam("bloodgroup")String f,
        @RequestParam("healthissue")String g,
        @RequestParam("username")String h,
        @RequestParam("password")String i,
        @RequestParam("role")String k,
        @RequestParam("user3")String u11,
        Model m
    ){
       
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
                        PreparedStatement stmt1=con.prepareStatement("SELECT * FROM patients ORDER BY ID DESC LIMIT 1");  
            int n = 0;
           ResultSet rs = stmt1.executeQuery();
            while (rs.next()) {
                
                n=rs.getInt("ID");
            }
            int j=n+1;
            
            PreparedStatement stmt2 =con.prepareStatement("select * from patients where username = ?");
            stmt2.setString(1, h);
            ResultSet rs2 = stmt2.executeQuery();
            String a4 = null;
            while(rs2.next()){
                a4 = rs2.getString("username");
            }
            if(h.equals(a4)){
                return "register_false";
            }else{

            PreparedStatement stmt=con.prepareStatement("insert into patients values(?,?,?,?,?,?,?,?,?,?,?,?)");  
            
            stmt.setString(2, a);
            stmt.setString(3, b);
            stmt.setString(4,c);  
            stmt.setString(5,d);  
            stmt.setString(6,z);  
            stmt.setString(7,f);  
            stmt.setString(8,g);  
            stmt.setString(9,h);  
            stmt.setString(10,i);  
            stmt.setString(11,k);  
            stmt.setString(12,k);  
            stmt.setInt(1, j);
            
            
            stmt.executeUpdate();
            m.addAttribute("user",u11);
        }
        } catch (Exception e) {
        }
        
        return "admin/admindashboard";
        
    }
    
//    @RequestMapping("/paddp")
//    public String processaddpatient(
//        @ModelAttribute("pd") Details pd1,
//        Map<String, Object> model
//    )
//    {
//        
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
//
//            System.out.println("adding in database");
//            
//            PreparedStatement stmt1=con.prepareStatement("SELECT * FROM PATIENTS ORDER BY ID DESC LIMIT 1");  
//            int n = 0;
//           ResultSet rs = stmt1.executeQuery();
//            while (rs.next()) {
//                
//                n=rs.getInt("ID");
//            }
//            int j=n+1;
//            PreparedStatement stmt=con.prepareStatement("INSERT INTO patients VALUES(?,?,?,?,?,?,?,?,?,?,?)");  
//            
//            String a=pd1.getName();
//            String b=pd1.getDob();
//            String c=pd1.getAddress();
//            String d=pd1.getAge();
//            String e=pd1.getGender();
//            String f=pd1.getBloodgroup();
//            String g=pd1.getHealthissue();
//            String h = pd1.getUsername();
//            String i = pd1.getPassword();
//            String k = pd1.getRole();
//                        
//           stmt.setString(2, a);
//            stmt.setString(3, b);
//            stmt.setString(4,c);//1 specifies the first parameter in the query  
//            stmt.setString(5,d);//1 specifies the first parameter in the query  
//            stmt.setString(6,e);//1 specifies the first parameter in the query  
//            System.out.println("between");
//            stmt.setString(7,f);//1 specifies the first parameter in the query  
//            stmt.setString(8,g);
//            stmt.setString(9,h);
//            stmt.setString(10,i);
//            stmt.setString(11,k);
//            stmt.setInt(1,j);    
//            System.out.println("adding in database on the way again");
//            
//            stmt.executeUpdate();
//        } catch (Exception e) {
//        }
//        
//        return "login_AD";
//    }
//        
    
//    view & edit
    
    @RequestMapping(value="doc_list")
    public String doc_list(
    @RequestParam("user_89") String d1, Model m1){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");

          PreparedStatement stmt=con.prepareStatement("select * from patients where username=?");  
            stmt.setString(1, d1);  
            m1.addAttribute("user82", d1);
            System.out.println("after dashbboard");
            System.out.println(d1);
            ResultSet rs = stmt.executeQuery();
        }catch(Exception z){
            
        }
       
//        return "user/doctor_list";
          return "appointment";
    }
    
    @RequestMapping(value = "view_patient")
    public String viewpatient(
    @RequestParam("user3") String b1,
            Model m1
    ){
        m1.addAttribute("user",b1);
        return "admin/view_edit";
    }
    
    
    @RequestMapping(value="use")
    public String gg(
    @RequestParam("user1") String a1,
            Model m1
    ){
        
        m1.addAttribute("user",a1);
        
        return "user/userdashboard";
    }
    
    @RequestMapping(value="appoint")
    public String ghg(
    @RequestParam("user168") String b1,
            Model m1){
        m1.addAttribute("user16", b1);
        System.out.println("after doc page");
        System.out.println(b1);
        return "appointment";
    }
    
    @RequestMapping(value="appoint_add")
    public String hfj(
    @RequestParam("name") String d1,
//    @RequestParam("username") String d2,
    @RequestParam("doctor") String d3,
    @RequestParam("healthissue") String d4,
    @RequestParam("user3") String d9,
    Model m1
    ){
        String d5 = "in-progress";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            PreparedStatement stmt = con.prepareStatement("insert into appointment values(?,?,?,?,?) ");
            stmt.setString(1, d9);
            stmt.setString(2, d3);
            stmt.setString(3, d5);
            stmt.setString(4, d1);
            stmt.setString(5, d4);
            m1.addAttribute("user", d9);
            System.out.println("data is shown");
            stmt.executeUpdate();
            System.out.println("data added");
            System.out.println("before name");
            System.out.println(d9);
            System.out.println("aftername");
        }catch(Exception h){
            
        }
        
        return "user/userdashboard";
    }
    
    
        @RequestMapping(value="view_edit_user11")
    public String bb(
    @RequestParam("user") String z, Model m1){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");

          PreparedStatement stmt=con.prepareStatement("select * from patients where username=?");  
            stmt.setString(1, z);  
            
            ResultSet rs = stmt.executeQuery();
   
            String a=null,b=null,c=null, d=null, e=null;
           
            while (rs.next()) {
                a=rs.getString("name");
                b=rs.getString("age");
                c=rs.getString("gender");
                d=rs.getString("blood_group");
                e=rs.getString("health_issue");
            }
            System.out.println(z);
            m1.addAttribute("n9",z);
            m1.addAttribute("n1", a);
            m1.addAttribute("n2", b);
            m1.addAttribute("n3", c);
            m1.addAttribute("n4", d);
            m1.addAttribute("n5", e);
            
        } catch (Exception h) {
        }
        
        return "user/view_edit_user";
    }
    
    
    @RequestMapping(value = "update_user")
    public String uodaste_user(
            @RequestParam("id")String n,
            Model m1
    ){
        System.out.println(n);
        m1.addAttribute("user_2",n);
        return "user/update_user_info";
    }
    
    @RequestMapping(value = "/update_user22", method = RequestMethod.POST)
    public String updatesew(
            @RequestParam("name") String h1,
            @RequestParam("dob") String h2,
            @RequestParam("address") String h3,
            @RequestParam("age") String h4,
            @RequestParam("gender") String h5,
            @RequestParam("bloodgroup") String h6,
            @RequestParam("healthissue") String h7,
            @RequestParam("id") String h9,
            Model m
    ){
        try{
             Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            
         PreparedStatement stmt=con.prepareStatement("update patients set name=?,dob=?,address=?,age=?,gender=?,blood_group=?,health_issue=? where username=?");  
         stmt.setString(1, h1);
         stmt.setString(2, h2);
         stmt.setString(3, h3);
         stmt.setString(4, h4);
         stmt.setString(5, h5);
         stmt.setString(6, h6);
         stmt.setString(7, h7);
         stmt.setString(8, h9);
         m.addAttribute("user",h9);
         stmt.executeUpdate();
            System.out.println(h9);
            System.out.println("data updated\n");
        }catch(Exception z){
            
        }
        
        
        return"user/userdashboard";
    }
    
    
    @RequestMapping(value = "appoint_acp")
    public String appi(
            @RequestParam("id")String n,
            Model m1
    ){
        try {
            String gh = "yes";
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            
            PreparedStatement stmt1=con.prepareStatement("update appointment set status = ? where name =?");  
          
           stmt1.setString(1,gh);
           stmt1.setString(2,n);
            stmt1.executeUpdate();
            m1.addAttribute("user3",impn1);
            System.out.println("added in database");
        } catch (Exception e) {
        }
        return "admin/appointment_doc";
    }
    
    
    @RequestMapping(value = "appoint_dcp")
    public String appi2(
            @RequestParam("id")String n,
            Model m1
    ){
        try {
            String gh = "no";
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            
            PreparedStatement stmt1=con.prepareStatement("update appointment set status = ? where name =?");  
          
           stmt1.setString(1,gh);
           stmt1.setString(2,n);
            stmt1.executeUpdate();
            m1.addAttribute("user3",impn1);
            System.out.println("added in database");
        } catch (Exception e) {
        }
        return "admin/appointment_doc";
    }
    
    
    
//    delete
    @RequestMapping(value = "pdelete")
    public String pdelete(
            @RequestParam("id")int n,
            Model m1
    ){
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");
            
            PreparedStatement stmt1=con.prepareStatement("DELETE FROM patients WHERE ID=?");  
          
           stmt1.setInt(1,n);
            stmt1.executeUpdate();
            m1.addAttribute("user",impn1);
            System.out.println("added in database");
        } catch (Exception e) {
        }
        return "admin/view_edit";
    }
    
//    update
    @RequestMapping(value = "/pupdate",method = RequestMethod.POST)
    public String updatecriminal(
            Map<String, Object> ob1,
            @RequestParam("id")int n,
            Model m
    ){
        Details nc = new Details();  
       ob1.put("pd", nc);
       int j=n;
       m.addAttribute("id",j);
        m.addAttribute("user",impn1);
        return "admin/updatepatients";
    }
    
    @RequestMapping(value = "/processpupdate", method = RequestMethod.POST)
    public String processpupdate(
//            @ModelAttribute("pd") Details pd1,
//            Map<String, Object> model,
            @RequestParam("name")String a,
            @RequestParam("dob")String b,
            @RequestParam("address")String c,
            @RequestParam("age")String d,
            @RequestParam("gender")String e,
            @RequestParam("bloodgroup")String f,
            @RequestParam("healthissue")String g,
            @RequestParam("id")int n,
            Model m1
    ) {
             
       
        try {
            System.out.println("reached to register proccessing");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root","root@123");

            System.out.println("adding in database");
            
            
            PreparedStatement stmt=con.prepareStatement("update patients set name=?,dob=?,address=?,age=?,gender=?,blood_group=?,health_issue=? where id=?");  
            
                        
           stmt.setString(1, a);
            stmt.setString(2, b);
            stmt.setString(3,c);//1 specifies the first parameter in the query  
            stmt.setString(4,d);//1 specifies the first parameter in the query  
            stmt.setString(5,e);//1 specifies the first parameter in the query  
            System.out.println("between");
            stmt.setString(6,f);//1 specifies the first parameter in the query  
            stmt.setString(7,g);
            stmt.setInt(8,n);
            System.out.println("adding in database on the way again");
            
            stmt.executeUpdate();
            
             m1.addAttribute("user",impn1);
            System.out.println("added in database");
        } catch (Exception z) {
        }
        
        return "admin/view_edit";
    }
    
}
