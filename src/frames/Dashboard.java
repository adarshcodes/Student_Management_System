/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frames;

import java.awt.Color;
import java.awt.Desktop;
import java.awt.Font;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import javax.swing.JOptionPane;
import java.sql.*;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimerTask;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.border.Border;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

/**
 *
 * @author root
 */
public class Dashboard extends javax.swing.JFrame {

    /**
     * Creates new form NewJFrame
     */
    public Dashboard() {
        initComponents();
         

        bar1.setBackground(new Color(255,255,255));

                         // Fetching Total Students

                         {  try{

            Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql:///Student_management_System","root","root");
           PreparedStatement pstmt=conn.prepareStatement
            ("select count(*) from students_info");
            
            ResultSet rs=pstmt.executeQuery();

            while(rs.next()){
                int a=rs.getInt("count(*)");
                
           total_student.setText(Integer.toString(a));
                
            }
        }catch(Exception e){JOptionPane.showMessageDialog(null,e);}}
    
   
                         





                                        // Time And Date Generator
   
      {int time=0;
        
        new Thread(){
        
        public void run(){
        
          while(time==0){
           
           Calendar cal=new GregorianCalendar();
           
           int day=cal.get(Calendar.DAY_OF_MONTH);
           int month=cal.get(Calendar.MONTH);
           int year=cal.get(Calendar.YEAR);
           int hrs=cal.get(Calendar.HOUR);
           int min=cal.get(Calendar.MINUTE);
           int sec=cal.get(Calendar.SECOND);
           int A_P=cal.get(Calendar.AM_PM);
           int mon=month+1;
           
           switch(mon){
               
               case 0: date.setText(day+" "+"January"+" "+year);
               break;
               case 1: date.setText(day+" "+"Februray"+" "+year);
               break;
               case 2: date.setText(day+" "+"March"+" "+year);
               break;
               case 3: date.setText(day+" "+"April"+" "+year);
               break;
               case 4: date.setText(day+" "+"May"+" "+year);
               break;
               case 5: date.setText(day+" "+"JUne"+" "+year);
               break;
               case 7: date.setText(day+" "+"July"+" "+year);
               break;
               case 8: date.setText(day+" "+"August"+" "+year);
               break;
               case 9: date.setText(day+" "+"September"+" "+year);
               break;
               case 10: date.setText(day+" "+"October"+" "+year);
               break;
               case 11: date.setText(day+" "+"November"+" "+year);
               break;
               case 12: date.setText(day+" "+"December"+" "+year);
               break;
           }
  
           String DAY_NIGHT="1";
           if(A_P==1){
               DAY_NIGHT="PM";           
           }else{
           DAY_NIGHT="AM";
           }
           
           String runtime=hrs+":"+min+":"+sec+" "+DAY_NIGHT;
          
           
       timer.setText(runtime);
          }  
            
        }
        }.start();}    
    
                          




                                      // Image Slider
      
      {new java.util.Timer().schedule(new TimerTask() {
            @Override
            public void run() {
           
                   jPanelSlider1.nextPanel(30,img2,jPanelSlider1.right);
                     new java.util.Timer().schedule(new TimerTask() {
            @Override
            public void run() {
           
                   jPanelSlider1.nextPanel(30,img3,jPanelSlider1.right);
                     new java.util.Timer().schedule(new TimerTask() {
            @Override
            public void run() {
           
                   jPanelSlider1.nextPanel(30,img4,jPanelSlider1.right);
             }
        },1000*5);
         
             }
        },1000*5);
         
             }
        },1000*5);}
      
      
      
                         



                                           // Internet Checker   
      
      
                        
          {
                     Socket sock=new Socket();
                     InetSocketAddress addr=new InetSocketAddress("www.google.com",80);


                     try{
    
                     sock.connect(addr,3000);
                      inet.setForeground(new Color(153,153,153));
                      inet.setText("Internet_Connected");
                      inet.setForeground(new Color(0,204,106));
                      }
                     catch(Exception e)
                     {
                       inet.setForeground(new Color(204,51,0));
                       inet.setText("Internet_Disconnected");
                       }
                     finally{
                     try{sock.close();}
                     catch(Exception e){
                       }
                          }
          }                      
    
    
    }
      
    
    
    
    
    
    
    
    
    int x,y,totalamt,paid,remaining,reg,adm;
String fname,sname,mail,add,gen,opt,opt_sub,regi,strm,mob;
  
    
   
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        Root = new javax.swing.JPanel();
        topbar = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        timer = new javax.swing.JLabel();
        date = new javax.swing.JLabel();
        user_loged = new javax.swing.JPanel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        inet = new javax.swing.JLabel();
        Bar = new javax.swing.JPanel();
        btn_home = new javax.swing.JButton();
        btnadd = new javax.swing.JButton();
        btnview = new javax.swing.JButton();
        btnAus = new javax.swing.JButton();
        lbldash = new javax.swing.JLabel();
        lbladd = new javax.swing.JLabel();
        lblview = new javax.swing.JLabel();
        lblau = new javax.swing.JLabel();
        pnlBody = new javax.swing.JPanel();
        Dashboard = new javax.swing.JPanel();
        baroftotal = new javax.swing.JPanel();
        total_student = new javax.swing.JLabel();
        toatal_teacher = new javax.swing.JLabel();
        total_subjects = new javax.swing.JLabel();
        total_classes = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        img = new javax.swing.JLabel();
        img_pnl = new javax.swing.JPanel();
        jPanelSlider1 = new diu.swe.habib.JPanelSlider.JPanelSlider();
        img1 = new javax.swing.JPanel();
        jLabel25 = new javax.swing.JLabel();
        img2 = new javax.swing.JPanel();
        jLabel24 = new javax.swing.JLabel();
        img3 = new javax.swing.JPanel();
        jLabel26 = new javax.swing.JLabel();
        img4 = new javax.swing.JPanel();
        jLabel27 = new javax.swing.JLabel();
        Add_student = new javax.swing.JPanel();
        Student_details = new javax.swing.JPanel();
        jLabel28 = new javax.swing.JLabel();
        jPanel10 = new javax.swing.JPanel();
        firstname1 = new javax.swing.JLabel();
        fname_field1 = new javax.swing.JTextField();
        surname1 = new javax.swing.JLabel();
        sname_field1 = new javax.swing.JTextField();
        mob1 = new javax.swing.JLabel();
        mobile_field1 = new javax.swing.JTextField();
        emailaddress1 = new javax.swing.JLabel();
        email_field1 = new javax.swing.JTextField();
        haddress1 = new javax.swing.JLabel();
        address_field1 = new javax.swing.JTextField();
        gender1 = new javax.swing.JLabel();
        male_rb1 = new javax.swing.JRadioButton();
        female_rb1 = new javax.swing.JRadioButton();
        jLabel13 = new javax.swing.JLabel();
        Fee_details = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        amount_field = new javax.swing.JTextField();
        opt_field = new javax.swing.JTextField();
        total_field = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        School_details = new javax.swing.JPanel();
        jLabel29 = new javax.swing.JLabel();
        jPanel9 = new javax.swing.JPanel();
        registration1 = new javax.swing.JLabel();
        add4class1 = new javax.swing.JLabel();
        stream1 = new javax.swing.JLabel();
        subject1 = new javax.swing.JLabel();
        reg_field1 = new javax.swing.JTextField();
        admcbox1 = new javax.swing.JComboBox<>();
        streamcbox1 = new javax.swing.JComboBox<>();
        jRadioButton3 = new javax.swing.JRadioButton();
        jRadioButton4 = new javax.swing.JRadioButton();
        jSeparator2 = new javax.swing.JSeparator();
        jLabel12 = new javax.swing.JLabel();
        progress1 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        jPanel8 = new javax.swing.JPanel();
        bar1 = new javax.swing.JProgressBar();
        percentage1 = new javax.swing.JLabel();
        delete = new javax.swing.JLabel();
        clr_add = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        view_students = new javax.swing.JPanel();
        srch_pnl = new javax.swing.JPanel();
        srchbtn = new javax.swing.JLabel();
        exitbtn = new javax.swing.JLabel();
        search = new javax.swing.JTextField();
        srchbar = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        student_tbl = new javax.swing.JTable();
        jPanel4 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        name_lbl = new javax.swing.JLabel();
        grad = new javax.swing.JLabel();
        email_lbl = new javax.swing.JLabel();
        mobile_lbl = new javax.swing.JLabel();
        address_lbl = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        class_lbl = new javax.swing.JLabel();
        stream_lbl = new javax.swing.JLabel();
        opt_lbl = new javax.swing.JLabel();
        jSeparator3 = new javax.swing.JSeparator();
        paid_lbl = new javax.swing.JLabel();
        total_lbl = new javax.swing.JLabel();
        remaining_lbl = new javax.swing.JLabel();
        jLabel43 = new javax.swing.JLabel();
        jLabel42 = new javax.swing.JLabel();
        jLabel41 = new javax.swing.JLabel();
        remain_fld = new javax.swing.JTextField();
        amt_fld = new javax.swing.JTextField();
        tot_fld = new javax.swing.JTextField();
        clear = new javax.swing.JLabel();
        jLabel30 = new javax.swing.JLabel();
        pnlaboutus = new javax.swing.JPanel();
        jLabel31 = new javax.swing.JLabel();
        jLabel32 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel33 = new javax.swing.JLabel();
        labelworking = new javax.swing.JLabel();
        jLabel34 = new javax.swing.JLabel();
        jLabel35 = new javax.swing.JLabel();
        lblhome1 = new javax.swing.JLabel();
        lblhome2 = new javax.swing.JLabel();
        jLabel36 = new javax.swing.JLabel();
        jLabel37 = new javax.swing.JLabel();
        clr_add1 = new javax.swing.JLabel();
        jLabel38 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        Root.setBackground(new java.awt.Color(204, 204, 204));
        Root.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        topbar.setBackground(new java.awt.Color(253, 253, 253));
        topbar.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(246, 246, 246)));
        topbar.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                topbarMouseDragged(evt);
            }
        });
        topbar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                topbarMousePressed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("DejaVu Sans", 0, 17)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(0, 204, 204));
        jLabel9.setText("Student");

        jLabel14.setFont(new java.awt.Font("DejaVu Sans", 0, 17)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(0, 204, 204));
        jLabel14.setText("Management");

        jLabel15.setFont(new java.awt.Font("DejaVu Sans", 0, 17)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(0, 204, 204));
        jLabel15.setText("System");

        jLabel20.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/icons8-cancel-20(2).png"))); // NOI18N
        jLabel20.setToolTipText("Exit");
        jLabel20.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel20.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel20MouseClicked(evt);
            }
        });

        jLabel23.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/min0.png"))); // NOI18N
        jLabel23.setToolTipText("Minimize");
        jLabel23.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel23.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel23MouseClicked(evt);
            }
        });

        timer.setFont(new java.awt.Font("Aldrich", 0, 13)); // NOI18N
        timer.setForeground(new java.awt.Color(0, 204, 102));
        timer.setToolTipText("current Time");

        date.setFont(new java.awt.Font("Aldrich", 0, 13)); // NOI18N
        date.setForeground(new java.awt.Color(255, 153, 0));

        javax.swing.GroupLayout topbarLayout = new javax.swing.GroupLayout(topbar);
        topbar.setLayout(topbarLayout);
        topbarLayout.setHorizontalGroup(
            topbarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, topbarLayout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(date, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(timer, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel9)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel14)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel15)
                .addGap(301, 301, 301)
                .addComponent(jLabel23, javax.swing.GroupLayout.PREFERRED_SIZE, 23, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel20, javax.swing.GroupLayout.PREFERRED_SIZE, 24, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        topbarLayout.setVerticalGroup(
            topbarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jLabel9, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jLabel23, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(topbarLayout.createSequentialGroup()
                .addComponent(jLabel20, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addComponent(date, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(timer, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        Root.add(topbar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1030, 30));

        user_loged.setBackground(new java.awt.Color(255, 255, 255));

        jLabel16.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(127, 140, 141));
        jLabel16.setText("adarsh.pr.dev@gmail.com");

        jLabel17.setFont(new java.awt.Font("Segoe UI", 0, 13)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(52, 152, 219));
        jLabel17.setText("Learn More");
        jLabel17.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel17.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabel17MouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabel17MouseEntered(evt);
            }
        });

        jLabel18.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(127, 140, 141));
        jLabel18.setText("Admin");

        jLabel19.setFont(new java.awt.Font("DejaVu Serif", 1, 20)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(44, 62, 80));
        jLabel19.setText("Adarsh Pratap Singh");

        jLabel21.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel21.setForeground(new java.awt.Color(127, 140, 141));
        jLabel21.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel21.setText("You are login as Admin, ");

        jLabel22.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel22.setForeground(new java.awt.Color(52, 152, 219));
        jLabel22.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel22.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/out.png"))); // NOI18N
        jLabel22.setText("Logout ?");
        jLabel22.setToolTipText("Logout here");
        jLabel22.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jLabel22.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel22MouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabel22MouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabel22MouseEntered(evt);
            }
        });

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/User.png"))); // NOI18N

        inet.setForeground(new java.awt.Color(153, 153, 153));

        javax.swing.GroupLayout user_logedLayout = new javax.swing.GroupLayout(user_loged);
        user_loged.setLayout(user_logedLayout);
        user_logedLayout.setHorizontalGroup(
            user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(user_logedLayout.createSequentialGroup()
                .addGap(38, 38, 38)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                        .addGroup(user_logedLayout.createSequentialGroup()
                            .addComponent(jLabel18, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(jLabel17)
                            .addGap(110, 110, 110))
                        .addComponent(jLabel19, javax.swing.GroupLayout.Alignment.LEADING))
                    .addGroup(user_logedLayout.createSequentialGroup()
                        .addComponent(jLabel16)
                        .addGap(53, 53, 53)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 344, Short.MAX_VALUE)
                .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(user_logedLayout.createSequentialGroup()
                        .addComponent(jLabel21)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel22))
                    .addComponent(inet, javax.swing.GroupLayout.PREFERRED_SIZE, 185, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(42, 42, 42))
        );
        user_logedLayout.setVerticalGroup(
            user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(user_logedLayout.createSequentialGroup()
                .addContainerGap(11, Short.MAX_VALUE)
                .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(user_logedLayout.createSequentialGroup()
                        .addGap(3, 3, 3)
                        .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel21, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel22))
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, user_logedLayout.createSequentialGroup()
                        .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(user_logedLayout.createSequentialGroup()
                                .addComponent(jLabel19)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(user_logedLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(jLabel18)
                                    .addComponent(jLabel17)))
                            .addComponent(inet, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel16)
                        .addGap(39, 39, 39))))
            .addGroup(user_logedLayout.createSequentialGroup()
                .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        Root.add(user_loged, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 30, 1030, 120));

        Bar.setBackground(new java.awt.Color(255, 255, 255));
        Bar.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        Bar.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btn_home.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 13)); // NOI18N
        btn_home.setForeground(new java.awt.Color(0, 102, 255));
        btn_home.setText("Dashboard");
        btn_home.setBorderPainted(false);
        btn_home.setContentAreaFilled(false);
        btn_home.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btn_home.setFocusable(false);
        btn_home.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_homeActionPerformed(evt);
            }
        });
        Bar.add(btn_home, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 10, 130, -1));

        btnadd.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 13)); // NOI18N
        btnadd.setText("Add Students");
        btnadd.setBorderPainted(false);
        btnadd.setContentAreaFilled(false);
        btnadd.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnadd.setFocusable(false);
        btnadd.setPreferredSize(new java.awt.Dimension(100, 27));
        btnadd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnaddActionPerformed(evt);
            }
        });
        Bar.add(btnadd, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 10, 130, -1));

        btnview.setBackground(new java.awt.Color(255, 153, 51));
        btnview.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 13)); // NOI18N
        btnview.setText("View Students");
        btnview.setBorderPainted(false);
        btnview.setContentAreaFilled(false);
        btnview.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnview.setFocusable(false);
        btnview.setPreferredSize(new java.awt.Dimension(100, 27));
        btnview.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnviewActionPerformed(evt);
            }
        });
        Bar.add(btnview, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 10, 130, -1));

        btnAus.setFont(new java.awt.Font("Berlin Sans FB Demi", 0, 13)); // NOI18N
        btnAus.setText("About Devs.");
        btnAus.setBorderPainted(false);
        btnAus.setContentAreaFilled(false);
        btnAus.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnAus.setFocusable(false);
        btnAus.setPreferredSize(new java.awt.Dimension(100, 27));
        btnAus.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAusActionPerformed(evt);
            }
        });
        Bar.add(btnAus, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 10, 130, -1));

        lbldash.setBackground(new java.awt.Color(0, 153, 255));
        lbldash.setOpaque(true);
        lbldash.setPreferredSize(new java.awt.Dimension(100, 0));
        Bar.add(lbldash, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 32, 30, 3));

        lbladd.setBackground(new java.awt.Color(255, 255, 255));
        lbladd.setOpaque(true);
        lbladd.setPreferredSize(new java.awt.Dimension(100, 0));
        Bar.add(lbladd, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 32, 32, 3));

        lblview.setBackground(new java.awt.Color(255, 255, 255));
        lblview.setOpaque(true);
        Bar.add(lblview, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 32, 33, 3));

        lblau.setBackground(new java.awt.Color(255, 255, 255));
        lblau.setOpaque(true);
        lblau.setPreferredSize(new java.awt.Dimension(100, 0));
        Bar.add(lblau, new org.netbeans.lib.awtextra.AbsoluteConstraints(640, 32, 25, 3));

        Root.add(Bar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 150, 1030, 40));

        pnlBody.setBackground(new java.awt.Color(255, 255, 255));
        pnlBody.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        Dashboard.setBackground(new java.awt.Color(242, 244, 245));

        baroftotal.setBackground(new java.awt.Color(242, 244, 245));
        baroftotal.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        total_student.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 37)); // NOI18N
        total_student.setForeground(new java.awt.Color(194, 194, 194));
        total_student.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        total_student.setText("0");
        baroftotal.add(total_student, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 20, 80, -1));

        toatal_teacher.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 37)); // NOI18N
        toatal_teacher.setForeground(new java.awt.Color(194, 194, 194));
        toatal_teacher.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        toatal_teacher.setText("40");
        baroftotal.add(toatal_teacher, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 20, 80, -1));

        total_subjects.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 37)); // NOI18N
        total_subjects.setForeground(new java.awt.Color(194, 194, 194));
        total_subjects.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        total_subjects.setText("13");
        baroftotal.add(total_subjects, new org.netbeans.lib.awtextra.AbsoluteConstraints(540, 20, 80, -1));

        total_classes.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 37)); // NOI18N
        total_classes.setForeground(new java.awt.Color(194, 194, 194));
        total_classes.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        total_classes.setText("15");
        baroftotal.add(total_classes, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 20, 80, -1));

        jLabel2.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(153, 153, 153));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Total Students");
        baroftotal.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 70, 110, -1));

        jLabel4.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(153, 153, 153));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Total Teachers");
        baroftotal.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 70, 130, -1));

        jLabel8.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 12)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(153, 153, 153));
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Total Classes");
        baroftotal.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(710, 70, 100, -1));

        jLabel6.setFont(new java.awt.Font("DejaVu Sans Mono", 0, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(153, 153, 153));
        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setText("Total Subjects");
        baroftotal.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 70, 120, -1));

        img.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/bitmap.png"))); // NOI18N
        baroftotal.add(img, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        img_pnl.setBackground(new java.awt.Color(242, 244, 245));

        jPanelSlider1.setBackground(new java.awt.Color(242, 244, 245));
        jPanelSlider1.setBorder(null);

        img1.setBackground(new java.awt.Color(242, 244, 245));

        jLabel25.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/a.png"))); // NOI18N

        javax.swing.GroupLayout img1Layout = new javax.swing.GroupLayout(img1);
        img1.setLayout(img1Layout);
        img1Layout.setHorizontalGroup(
            img1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(img1Layout.createSequentialGroup()
                .addComponent(jLabel25, javax.swing.GroupLayout.PREFERRED_SIZE, 845, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        img1Layout.setVerticalGroup(
            img1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, img1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel25, javax.swing.GroupLayout.PREFERRED_SIZE, 395, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanelSlider1.add(img1, "card2");

        img2.setBackground(new java.awt.Color(242, 244, 245));

        jLabel24.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/b.png"))); // NOI18N

        javax.swing.GroupLayout img2Layout = new javax.swing.GroupLayout(img2);
        img2.setLayout(img2Layout);
        img2Layout.setHorizontalGroup(
            img2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel24, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 893, Short.MAX_VALUE)
        );
        img2Layout.setVerticalGroup(
            img2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel24, javax.swing.GroupLayout.DEFAULT_SIZE, 407, Short.MAX_VALUE)
        );

        jPanelSlider1.add(img2, "card3");

        img3.setBackground(new java.awt.Color(242, 244, 245));

        jLabel26.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/c.png"))); // NOI18N

        javax.swing.GroupLayout img3Layout = new javax.swing.GroupLayout(img3);
        img3.setLayout(img3Layout);
        img3Layout.setHorizontalGroup(
            img3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel26, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 893, Short.MAX_VALUE)
        );
        img3Layout.setVerticalGroup(
            img3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel26, javax.swing.GroupLayout.DEFAULT_SIZE, 407, Short.MAX_VALUE)
        );

        jPanelSlider1.add(img3, "card4");

        img4.setBackground(new java.awt.Color(242, 244, 245));

        jLabel27.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/d.png"))); // NOI18N

        javax.swing.GroupLayout img4Layout = new javax.swing.GroupLayout(img4);
        img4.setLayout(img4Layout);
        img4Layout.setHorizontalGroup(
            img4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel27, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 893, Short.MAX_VALUE)
        );
        img4Layout.setVerticalGroup(
            img4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabel27, javax.swing.GroupLayout.DEFAULT_SIZE, 407, Short.MAX_VALUE)
        );

        jPanelSlider1.add(img4, "card5");

        javax.swing.GroupLayout img_pnlLayout = new javax.swing.GroupLayout(img_pnl);
        img_pnl.setLayout(img_pnlLayout);
        img_pnlLayout.setHorizontalGroup(
            img_pnlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelSlider1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        img_pnlLayout.setVerticalGroup(
            img_pnlLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelSlider1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout DashboardLayout = new javax.swing.GroupLayout(Dashboard);
        Dashboard.setLayout(DashboardLayout);
        DashboardLayout.setHorizontalGroup(
            DashboardLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, DashboardLayout.createSequentialGroup()
                .addGap(91, 91, 91)
                .addGroup(DashboardLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(DashboardLayout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addComponent(img_pnl, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(baroftotal, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(40, 40, 40))
        );
        DashboardLayout.setVerticalGroup(
            DashboardLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(DashboardLayout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(baroftotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(img_pnl, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pnlBody.add(Dashboard, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1030, 560));

        Add_student.setBackground(new java.awt.Color(242, 244, 245));

        Student_details.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel28.setBackground(new java.awt.Color(0, 204, 106));
        jLabel28.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel28.setForeground(new java.awt.Color(255, 255, 255));
        jLabel28.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel28.setText("Student Details");
        jLabel28.setOpaque(true);
        Student_details.add(jLabel28, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 0, 210, 40));

        jPanel10.setBackground(new java.awt.Color(255, 255, 255));

        firstname1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        firstname1.setText("First Name");

        fname_field1.setForeground(new java.awt.Color(153, 153, 153));
        fname_field1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 201, 104)));
        fname_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                fname_field1KeyTyped(evt);
            }
        });

        surname1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        surname1.setText("Surname");

        sname_field1.setForeground(new java.awt.Color(153, 153, 153));
        sname_field1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 201, 104)));
        sname_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                sname_field1KeyTyped(evt);
            }
        });

        mob1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        mob1.setText("Mobile Number");

        mobile_field1.setForeground(new java.awt.Color(153, 153, 153));
        mobile_field1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 201, 104)));
        mobile_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                mobile_field1KeyTyped(evt);
            }
        });

        emailaddress1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        emailaddress1.setText("Email Address");

        email_field1.setForeground(new java.awt.Color(153, 153, 153));
        email_field1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 201, 104)));
        email_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                email_field1KeyTyped(evt);
            }
        });

        haddress1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        haddress1.setText("Home Address");

        address_field1.setForeground(new java.awt.Color(153, 153, 153));
        address_field1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 201, 104)));
        address_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                address_field1KeyTyped(evt);
            }
        });

        gender1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        gender1.setText("Gender");

        male_rb1.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(male_rb1);
        male_rb1.setForeground(new java.awt.Color(102, 102, 102));
        male_rb1.setText("Male");
        male_rb1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                male_rb1ActionPerformed(evt);
            }
        });

        female_rb1.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup1.add(female_rb1);
        female_rb1.setForeground(new java.awt.Color(102, 102, 102));
        female_rb1.setText("Female");
        female_rb1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                female_rb1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel10Layout = new javax.swing.GroupLayout(jPanel10);
        jPanel10.setLayout(jPanel10Layout);
        jPanel10Layout.setHorizontalGroup(
            jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel10Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel10Layout.createSequentialGroup()
                                .addGap(29, 29, 29)
                                .addComponent(female_rb1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(male_rb1))
                            .addComponent(surname1)
                            .addComponent(emailaddress1)
                            .addComponent(haddress1)
                            .addComponent(mob1)
                            .addComponent(gender1)
                            .addComponent(firstname1))
                        .addGap(0, 75, Short.MAX_VALUE))
                    .addGroup(jPanel10Layout.createSequentialGroup()
                        .addGap(6, 6, 6)
                        .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(address_field1)
                            .addComponent(email_field1)
                            .addComponent(mobile_field1)
                            .addComponent(sname_field1)
                            .addComponent(fname_field1))))
                .addContainerGap())
        );
        jPanel10Layout.setVerticalGroup(
            jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel10Layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(firstname1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(fname_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(surname1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(sname_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(mob1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(mobile_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(emailaddress1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(email_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(haddress1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(address_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(12, 12, 12)
                .addComponent(gender1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel10Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(male_rb1)
                    .addComponent(female_rb1))
                .addGap(16, 16, 16))
        );

        Student_details.add(jPanel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 30, 240, 400));

        jLabel13.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/add.png"))); // NOI18N
        Student_details.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 290, 450));

        Fee_details.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(0, 204, 204));

        jLabel5.setBackground(new java.awt.Color(255, 255, 255));
        jLabel5.setFont(new java.awt.Font("DejaVu Sans", 0, 16)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setText("<html> Fee<br> Amount To<br> Pay</html>");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, 93, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(82, 82, 82)
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(3, 2, 105, 218));

        jLabel11.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        jLabel11.setText("Total Amount");
        jPanel2.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 150, -1, -1));

        amount_field.setForeground(new java.awt.Color(102, 102, 102));
        amount_field.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        amount_field.setText("Amount to pay");
        amount_field.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 204, 204)));
        amount_field.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                amount_fieldMousePressed(evt);
            }
        });
        amount_field.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                amount_fieldKeyTyped(evt);
            }
        });
        jPanel2.add(amount_field, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 40, 137, 28));

        opt_field.setForeground(new java.awt.Color(102, 102, 102));
        opt_field.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        opt_field.setText("Opt Subject Fee");
        opt_field.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 1, 0, new java.awt.Color(0, 204, 204)));
        opt_field.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                opt_fieldMousePressed(evt);
            }
        });
        opt_field.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                opt_fieldKeyTyped(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                opt_fieldKeyReleased(evt);
            }
        });
        jPanel2.add(opt_field, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 90, 137, 32));

        total_field.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        total_field.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 204, 204)));
        jPanel2.add(total_field, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 170, 137, 27));

        Fee_details.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, 260, 220));

        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/bar.png"))); // NOI18N
        Fee_details.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 280, 260));

        School_details.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel29.setBackground(new java.awt.Color(52, 152, 219));
        jLabel29.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel29.setForeground(new java.awt.Color(255, 255, 255));
        jLabel29.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel29.setText("School Details");
        jLabel29.setOpaque(true);
        School_details.add(jLabel29, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 0, 220, 40));

        jPanel9.setBackground(new java.awt.Color(255, 255, 255));

        registration1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        registration1.setText("Registration Number");

        add4class1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        add4class1.setText("Addmission for Class");

        stream1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        stream1.setText("Stream");

        subject1.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        subject1.setText("Optional Subject");

        reg_field1.setForeground(new java.awt.Color(153, 153, 153));
        reg_field1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        reg_field1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(52, 152, 219)));
        reg_field1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                reg_field1KeyTyped(evt);
            }
        });

        admcbox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select Class", "1", "2", "3", "4", "5", "6", "7", "8", "9", "11", " " }));
        admcbox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                admcbox1ActionPerformed(evt);
            }
        });

        streamcbox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Select stream", "PCM(Physics, Chemistry & Maths)", "PCB(Physics, Chemistry &Biology)", "Commerce" }));
        streamcbox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                streamcbox1ActionPerformed(evt);
            }
        });

        jRadioButton3.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup2.add(jRadioButton3);
        jRadioButton3.setText("Computer");
        jRadioButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton3ActionPerformed(evt);
            }
        });

        jRadioButton4.setBackground(new java.awt.Color(255, 255, 255));
        buttonGroup2.add(jRadioButton4);
        jRadioButton4.setText("Hindi");
        jRadioButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton4ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel9Layout = new javax.swing.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jSeparator2, javax.swing.GroupLayout.Alignment.TRAILING)
            .addGroup(jPanel9Layout.createSequentialGroup()
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel9Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(reg_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(registration1)))
                    .addGroup(jPanel9Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel9Layout.createSequentialGroup()
                                .addGap(25, 25, 25)
                                .addComponent(jRadioButton3)
                                .addGap(24, 24, 24)
                                .addComponent(jRadioButton4)
                                .addGap(39, 39, 39))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(streamcbox1, javax.swing.GroupLayout.PREFERRED_SIZE, 224, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(admcbox1, javax.swing.GroupLayout.PREFERRED_SIZE, 224, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(add4class1)
                                .addComponent(subject1)
                                .addComponent(stream1)))))
                .addContainerGap(21, Short.MAX_VALUE))
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel9Layout.createSequentialGroup()
                .addContainerGap(56, Short.MAX_VALUE)
                .addComponent(registration1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(reg_field1, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jSeparator2, javax.swing.GroupLayout.PREFERRED_SIZE, 12, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(44, 44, 44)
                .addComponent(add4class1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(admcbox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(stream1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(streamcbox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(subject1)
                .addGap(18, 18, 18)
                .addGroup(jPanel9Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jRadioButton3)
                    .addComponent(jRadioButton4))
                .addGap(43, 43, 43))
        );

        School_details.add(jPanel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 20, 260, 410));

        jLabel12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/add.png"))); // NOI18N
        School_details.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 300, 450));

        progress1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel7.setBackground(new java.awt.Color(255, 255, 255));

        jPanel8.setBackground(new java.awt.Color(255, 153, 0));

        bar1.setBackground(new java.awt.Color(255, 255, 255));
        bar1.setForeground(new java.awt.Color(0, 153, 153));
        bar1.setBorder(null);
        bar1.setBorderPainted(false);

        percentage1.setFont(new java.awt.Font("BatmanForeverAlternate", 0, 17)); // NOI18N
        percentage1.setForeground(new java.awt.Color(255, 255, 255));
        percentage1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        percentage1.setText("0 % Completed");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGroup(jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addGap(27, 27, 27)
                        .addComponent(percentage1, javax.swing.GroupLayout.PREFERRED_SIZE, 204, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel8Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(bar1, javax.swing.GroupLayout.PREFERRED_SIZE, 231, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(13, Short.MAX_VALUE))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addContainerGap(31, Short.MAX_VALUE)
                .addComponent(bar1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(percentage1, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        delete.setBackground(new java.awt.Color(0, 184, 148));
        delete.setFont(new java.awt.Font("DejaVu Serif", 1, 12)); // NOI18N
        delete.setForeground(new java.awt.Color(255, 255, 255));
        delete.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        delete.setText("Add");
        delete.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        delete.setOpaque(true);
        delete.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                deleteMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                deleteMouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                deleteMouseEntered(evt);
            }
        });

        clr_add.setBackground(new java.awt.Color(233, 30, 99));
        clr_add.setFont(new java.awt.Font("DejaVu Serif", 1, 12)); // NOI18N
        clr_add.setForeground(new java.awt.Color(255, 255, 255));
        clr_add.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        clr_add.setText("Clear");
        clr_add.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        clr_add.setOpaque(true);
        clr_add.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                clr_addMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                clr_addMouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                clr_addMouseEntered(evt);
            }
        });

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addComponent(clr_add, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(delete, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(jPanel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(clr_add, javax.swing.GroupLayout.DEFAULT_SIZE, 29, Short.MAX_VALUE)
                    .addComponent(delete, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(8, Short.MAX_VALUE))
        );

        progress1.add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(23, 10, 250, 150));

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/fee.png"))); // NOI18N
        progress1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 280, 170));

        javax.swing.GroupLayout Add_studentLayout = new javax.swing.GroupLayout(Add_student);
        Add_student.setLayout(Add_studentLayout);
        Add_studentLayout.setHorizontalGroup(
            Add_studentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, Add_studentLayout.createSequentialGroup()
                .addContainerGap(100, Short.MAX_VALUE)
                .addComponent(Student_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20)
                .addComponent(School_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(10, 10, 10)
                .addGroup(Add_studentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Fee_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(progress1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30))
        );
        Add_studentLayout.setVerticalGroup(
            Add_studentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Add_studentLayout.createSequentialGroup()
                .addGap(49, 49, 49)
                .addGroup(Add_studentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Student_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(School_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(Add_studentLayout.createSequentialGroup()
                        .addComponent(Fee_details, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(20, 20, 20)
                        .addComponent(progress1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(61, Short.MAX_VALUE))
        );

        pnlBody.add(Add_student, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1030, 560));

        view_students.setBackground(new java.awt.Color(242, 244, 245));
        view_students.setLayout(null);

        srch_pnl.setBackground(new java.awt.Color(242, 244, 245));
        srch_pnl.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        srchbtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        srchbtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                srchbtnMouseClicked(evt);
            }
        });
        srch_pnl.add(srchbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(278, 10, 40, 40));

        exitbtn.setFont(new java.awt.Font("DejaVu Sans", 0, 18)); // NOI18N
        exitbtn.setForeground(new java.awt.Color(204, 204, 204));
        exitbtn.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        exitbtn.setText("x");
        exitbtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        exitbtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                exitbtnMouseClicked(evt);
            }
        });
        srch_pnl.add(exitbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 10, 30, 40));

        search.setFont(new java.awt.Font("DejaVu Sans Light", 0, 14)); // NOI18N
        search.setForeground(new java.awt.Color(153, 153, 153));
        search.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        search.setText("Enter Class");
        search.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 1, new java.awt.Color(204, 204, 204)));
        search.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                searchMousePressed(evt);
            }
        });
        search.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                searchActionPerformed(evt);
            }
        });
        srch_pnl.add(search, new org.netbeans.lib.awtextra.AbsoluteConstraints(27, 15, 250, 30));

        srchbar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/srch.png"))); // NOI18N
        srch_pnl.add(srchbar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 320, 60));

        view_students.add(srch_pnl);
        srch_pnl.setBounds(180, 30, 380, 60);

        student_tbl.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        student_tbl.setForeground(new java.awt.Color(0, 0, 0));
        student_tbl.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Registration", "First Name", "Surname", "Gendar"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        student_tbl.setToolTipText("Click On the Student to see Detail");
        student_tbl.setGridColor(new java.awt.Color(255, 255, 255));
        student_tbl.setOpaque(false);
        student_tbl.setSelectionBackground(new java.awt.Color(51, 153, 255));
        student_tbl.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                student_tblMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(student_tbl);

        view_students.add(jScrollPane2);
        jScrollPane2.setBounds(90, 100, 510, 410);

        jPanel4.setBackground(new java.awt.Color(255, 255, 255));
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel5.setOpaque(false);

        name_lbl.setFont(new java.awt.Font("DejaVu Sans", 1, 17)); // NOI18N
        name_lbl.setForeground(new java.awt.Color(255, 255, 255));
        name_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        name_lbl.setText("Student Name Here");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(name_lbl, javax.swing.GroupLayout.DEFAULT_SIZE, 290, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(62, Short.MAX_VALUE)
                .addComponent(name_lbl, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29))
        );

        jPanel1.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 290, 120));

        grad.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/grad.png"))); // NOI18N
        jPanel1.add(grad, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 290, 120));

        jPanel4.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 290, 120));

        email_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        email_lbl.setForeground(new java.awt.Color(143, 143, 143));
        email_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        email_lbl.setText("Student's Email Here");
        jPanel4.add(email_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 170, 280, 20));

        mobile_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        mobile_lbl.setForeground(new java.awt.Color(143, 143, 143));
        mobile_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        mobile_lbl.setText("Student's Phone Here");
        jPanel4.add(mobile_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 190, 280, 20));

        address_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        address_lbl.setForeground(new java.awt.Color(143, 143, 143));
        address_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        address_lbl.setText("Student's Address Here");
        jPanel4.add(address_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 210, 280, 20));
        jPanel4.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 240, 240, 10));

        class_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        class_lbl.setForeground(new java.awt.Color(143, 143, 143));
        class_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        class_lbl.setText("Student's Class");
        jPanel4.add(class_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 270, 280, 30));

        stream_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        stream_lbl.setForeground(new java.awt.Color(143, 143, 143));
        stream_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        stream_lbl.setText("Student's Stream");
        jPanel4.add(stream_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, 280, 30));

        opt_lbl.setFont(new java.awt.Font("Dialog", 0, 12)); // NOI18N
        opt_lbl.setForeground(new java.awt.Color(143, 143, 143));
        opt_lbl.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        opt_lbl.setText("Student's Optional Subject");
        jPanel4.add(opt_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 310, 280, 30));
        jPanel4.add(jSeparator3, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 350, 240, 10));

        paid_lbl.setForeground(new java.awt.Color(102, 102, 102));
        paid_lbl.setText("Amount Paid");
        jPanel4.add(paid_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 410, 100, 30));

        total_lbl.setForeground(new java.awt.Color(102, 102, 102));
        total_lbl.setText("Total Fee");
        jPanel4.add(total_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 390, 80, 20));

        remaining_lbl.setForeground(new java.awt.Color(102, 102, 102));
        remaining_lbl.setText("Remaining Fee");
        jPanel4.add(remaining_lbl, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 440, 120, 20));

        jLabel43.setBackground(new java.awt.Color(120, 111, 166));
        jLabel43.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel43.setForeground(new java.awt.Color(255, 255, 255));
        jLabel43.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel43.setText("Fee_Info");
        jLabel43.setOpaque(true);
        jPanel4.add(jLabel43, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 360, 100, -1));

        jLabel42.setBackground(new java.awt.Color(52, 152, 219));
        jLabel42.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel42.setForeground(new java.awt.Color(255, 255, 255));
        jLabel42.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel42.setText("Class_Info");
        jLabel42.setOpaque(true);
        jPanel4.add(jLabel42, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 250, 90, -1));

        jLabel41.setBackground(new java.awt.Color(0, 204, 106));
        jLabel41.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel41.setForeground(new java.awt.Color(255, 255, 255));
        jLabel41.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel41.setText("Personal_Info");
        jLabel41.setOpaque(true);
        jPanel4.add(jLabel41, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 140, 100, -1));

        remain_fld.setForeground(new java.awt.Color(123, 123, 123));
        remain_fld.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        remain_fld.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(153, 153, 153)));
        jPanel4.add(remain_fld, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 440, 120, 20));

        amt_fld.setForeground(new java.awt.Color(123, 123, 123));
        amt_fld.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        amt_fld.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(153, 153, 153)));
        jPanel4.add(amt_fld, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 415, 120, 20));

        tot_fld.setForeground(new java.awt.Color(123, 123, 123));
        tot_fld.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        tot_fld.setBorder(javax.swing.BorderFactory.createMatteBorder(1, 1, 1, 1, new java.awt.Color(153, 153, 153)));
        jPanel4.add(tot_fld, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 390, 120, 20));

        clear.setBackground(new java.awt.Color(255, 121, 121));
        clear.setFont(new java.awt.Font("DejaVu Serif", 1, 12)); // NOI18N
        clear.setForeground(new java.awt.Color(255, 255, 255));
        clear.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        clear.setText("Clear_All");
        clear.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        clear.setOpaque(true);
        clear.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                clearMouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                clearMouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                clearMouseEntered(evt);
            }
        });
        jPanel4.add(clear, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 485, 75, 25));

        view_students.add(jPanel4);
        jPanel4.setBounds(680, 20, 290, 510);

        jLabel30.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/info1_1.png"))); // NOI18N
        view_students.add(jLabel30);
        jLabel30.setBounds(660, 10, 350, 530);

        pnlBody.add(view_students, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1030, 560));

        pnlaboutus.setBackground(new java.awt.Color(255, 255, 255));
        pnlaboutus.setBorder(null);
        pnlaboutus.setLayout(null);

        jLabel31.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 14)); // NOI18N
        jLabel31.setForeground(new java.awt.Color(125, 125, 125));
        jLabel31.setText("<html>This is short review about  our Project  of STUDENT MANAGEMENT SYSTEM.  </html>");
        pnlaboutus.add(jLabel31);
        jLabel31.setBounds(100, 170, 420, 40);

        jLabel32.setFont(new java.awt.Font("DejaVu Sans", 0, 13)); // NOI18N
        jLabel32.setForeground(new java.awt.Color(51, 102, 255));
        jLabel32.setText("Visit Our Project");
        pnlaboutus.add(jLabel32);
        jLabel32.setBounds(100, 430, 110, 17);

        jLabel1.setFont(new java.awt.Font("cmr10", 0, 52)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 153, 255));
        jLabel1.setText("Our Project");
        pnlaboutus.add(jLabel1);
        jLabel1.setBounds(50, 70, 310, 49);

        jLabel33.setFont(new java.awt.Font("DejaVu Sans", 0, 13)); // NOI18N
        jLabel33.setForeground(new java.awt.Color(51, 102, 255));
        jLabel33.setText("Core Of Program");
        pnlaboutus.add(jLabel33);
        jLabel33.setBounds(660, 320, 107, 17);

        labelworking.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/working.png"))); // NOI18N
        pnlaboutus.add(labelworking);
        labelworking.setBounds(620, 30, 340, 240);

        jLabel34.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 12)); // NOI18N
        jLabel34.setForeground(new java.awt.Color(78, 78, 78));
        jLabel34.setText("<html><body> <ul type=circle> <li>UI_Design- Material Design(Metro/Flat UI-Design)<br> <li>Language- Java(Swing)<br> <li>Database- MySql(Mariadb)<br> <li>Connector- JDBC(Db-connector)<br> <li>Platform- Kali GNU/Linux Rolling -v2018.3 (Awesome Plateform for Development.)<br> <li>Algorithm- MD-5 Hash Encryption(Developed By Apple Inc.) </body></html>");
        pnlaboutus.add(jLabel34);
        jLabel34.setBounds(630, 340, 320, 150);

        jLabel35.setFont(new java.awt.Font("DejaVu Sans", 0, 15)); // NOI18N
        jLabel35.setForeground(new java.awt.Color(0, 153, 255));
        jLabel35.setText("About Our Project");
        pnlaboutus.add(jLabel35);
        jLabel35.setBounds(60, 120, 130, 18);

        lblhome1.setBackground(new java.awt.Color(0, 153, 255));
        lblhome1.setForeground(new java.awt.Color(51, 102, 255));
        lblhome1.setOpaque(true);
        lblhome1.setPreferredSize(new java.awt.Dimension(100, 0));
        pnlaboutus.add(lblhome1);
        lblhome1.setBounds(670, 340, 30, 2);

        lblhome2.setBackground(new java.awt.Color(0, 153, 255));
        lblhome2.setForeground(new java.awt.Color(51, 102, 255));
        lblhome2.setOpaque(true);
        lblhome2.setPreferredSize(new java.awt.Dimension(100, 0));
        pnlaboutus.add(lblhome2);
        lblhome2.setBounds(110, 450, 30, 2);

        jLabel36.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 14)); // NOI18N
        jLabel36.setForeground(new java.awt.Color(125, 125, 125));
        jLabel36.setText("<html>Our this project is going to have the basic functinality that a Student Mangement System must have It. This is going to be a project that have a pure look and we are making the UI Design on the Formula of Material and Flat-UI Design which widely gonna popular among the Devs. and also like by the Users. We are taking Inspiration from some Google Websites which are amazing.</html> ");
        pnlaboutus.add(jLabel36);
        jLabel36.setBounds(100, 220, 480, 120);

        jLabel37.setFont(new java.awt.Font("DejaVu Sans Condensed", 0, 14)); // NOI18N
        jLabel37.setForeground(new java.awt.Color(125, 125, 125));
        jLabel37.setText("<html>We are taking care of the privacy and Security of the Data and Database so we are using the MD-5 Encryption algorithm to hashify the Email,Password and Phone No.</html> ");
        pnlaboutus.add(jLabel37);
        jLabel37.setBounds(100, 330, 440, 90);

        clr_add1.setBackground(new java.awt.Color(51, 153, 255));
        clr_add1.setFont(new java.awt.Font("DejaVu Serif", 1, 12)); // NOI18N
        clr_add1.setForeground(new java.awt.Color(255, 255, 255));
        clr_add1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        clr_add1.setText("More About Us");
        clr_add1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        clr_add1.setOpaque(true);
        clr_add1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                clr_add1MouseClicked(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                clr_add1MouseExited(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                clr_add1MouseEntered(evt);
            }
        });
        pnlaboutus.add(clr_add1);
        clr_add1.setBounds(120, 470, 250, 50);

        jLabel38.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icos/5a35525ab3ff09.3802770415134439307373.png"))); // NOI18N
        pnlaboutus.add(jLabel38);
        jLabel38.setBounds(0, 0, 1030, 560);

        pnlBody.add(pnlaboutus, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1030, 560));

        Root.add(pnlBody, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 190, 1030, 560));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(Root, javax.swing.GroupLayout.PREFERRED_SIZE, 1030, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(Root, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        setSize(new java.awt.Dimension(1027, 745));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btn_homeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_homeActionPerformed

        // Setting Colors to the buttons and lables after clicking.

        btnview.setForeground(new Color(0,0,0));
        btn_home.setForeground(new Color(0,102,255));
        btnadd.setForeground(new Color(0,0,0));
        lbldash.setBackground(new Color(0,153,255));
        lblau.setBackground(new Color(255,255,255));
        lblview.setBackground(new Color(255,255,255));
        lbladd.setBackground(new Color(255,255,255));
        btnAus.setForeground(new Color(0,0,0));

        // Changing the Panels while chicking on the labels

        pnlBody.removeAll();
        pnlBody.repaint();
        pnlBody.revalidate();
        pnlBody.add(Dashboard);
        pnlBody.repaint();
        pnlBody.revalidate();

    }//GEN-LAST:event_btn_homeActionPerformed

    private void btnaddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnaddActionPerformed

        // Setting Colors to the buttons and lables after clicking.

        btnview.setForeground(new Color(0,0,0));
        btnadd.setForeground(new Color(0,153,102));
        lbladd.setBackground(new Color(0,204,153));
        lbldash.setBackground(new Color(255,255,255));
        lblview.setBackground(new Color(255,255,255));
        lblau.setBackground(new Color(255,255,255));
        btn_home.setForeground(new Color(0,0,0));
        btnAus.setForeground(new Color(0,0,0));

        // Changing the Panels while chicking on the labels

        pnlBody.removeAll();
        pnlBody.repaint();
        pnlBody.revalidate();
        pnlBody.add(Add_student);
        pnlBody.repaint();
        pnlBody.revalidate();
        
       
    }//GEN-LAST:event_btnaddActionPerformed

    private void btnAusActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAusActionPerformed

        // Setting Colors to the buttons and lables after clicking.

        btnadd.setForeground(new Color(0,0,0));
        lblau.setBackground(new Color(255,0,102));
        lbldash.setBackground(new Color(255,255,255));
        lblview.setBackground(new Color(255,255,255));
        lbladd.setBackground(new Color(255,255,255));
        btnview.setForeground(new Color(0,0,0));
        btn_home.setForeground(new Color(0,0,0));
        btnAus.setForeground(new Color(255,51,102));

        // Changing the Panels while chicking on the labels

        pnlBody.removeAll();
        pnlBody.repaint();
        pnlBody.revalidate();
        pnlBody.add(pnlaboutus);
        pnlBody.repaint();
        pnlBody.revalidate();
          
    }//GEN-LAST:event_btnAusActionPerformed

    private void btnviewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnviewActionPerformed

        // Setting Colors to the buttons and lables after clicking.

        btn_home.setForeground(new Color(0,0,0));
        btnview.setForeground(new Color(255,102,51));
        btnadd.setForeground(new Color(0,0,0));
        lblview.setBackground(new Color(255,153,0));
        lbldash.setBackground(new Color(255,255,255));
        lbladd.setBackground(new Color(255,255,255));
        lblau.setBackground(new Color(255,255,255));
        btnAus.setForeground(new Color(0,0,0));

        // Changing the Panels while chicking on the labels

        pnlBody.removeAll();
        pnlBody.repaint();
        pnlBody.revalidate();
        pnlBody.add(view_students);
        pnlBody.repaint();
        pnlBody.revalidate();
        
          
    }//GEN-LAST:event_btnviewActionPerformed

    private void fname_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_fname_field1KeyTyped
       bar1.setValue(7);
       int a= bar1.getValue();
       percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_fname_field1KeyTyped

    private void sname_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_sname_field1KeyTyped
     bar1.setValue(14);
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_sname_field1KeyTyped

    private void mobile_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_mobile_field1KeyTyped
    bar1.setValue(21); 
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_mobile_field1KeyTyped

    private void email_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_email_field1KeyTyped
    bar1.setValue(28);
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_email_field1KeyTyped

    private void address_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_address_field1KeyTyped
    bar1.setValue(35); 
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_address_field1KeyTyped

    private void male_rb1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_male_rb1ActionPerformed
 bar1.setValue(49); 
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
gendar="male";
    }//GEN-LAST:event_male_rb1ActionPerformed

    private void female_rb1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_female_rb1ActionPerformed
       bar1.setValue(49); 
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
gendar="female";
    }//GEN-LAST:event_female_rb1ActionPerformed

    private void amount_fieldMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_amount_fieldMousePressed
        amount_field.setText("");        // TODO add your handling code here:
    }//GEN-LAST:event_amount_fieldMousePressed

    private void amount_fieldKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_amount_fieldKeyTyped
     bar1.setValue(91);   
 int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_amount_fieldKeyTyped

    private void opt_fieldMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_opt_fieldMousePressed
        opt_field.setText("");         // TODO add your handling code here:
    }//GEN-LAST:event_opt_fieldMousePressed

    private void opt_fieldKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_opt_fieldKeyTyped
        bar1.setValue(100);
        int a= bar1.getValue();
        percentage1.setText(Integer.toString(a)+"%"+"Completed");// TODO add your handling code here:
    }//GEN-LAST:event_opt_fieldKeyTyped

    private void opt_fieldKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_opt_fieldKeyReleased
        if(opt_field.getText().equals("")){
            total_field.setText("");
        }
        else{
            int a,b,c;
            a=Integer.parseInt(amount_field.getText());
            b=Integer.parseInt(opt_field.getText());
            c=a+b;

            total_field.setText(Integer.toString(c));
        }
    }//GEN-LAST:event_opt_fieldKeyReleased

    private void reg_field1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_reg_field1KeyTyped
     bar1.setValue(55);   
int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
    }//GEN-LAST:event_reg_field1KeyTyped

    private void admcbox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_admcbox1ActionPerformed
   if(admcbox1.getSelectedIndex()==0){
      
}
else{  bar1.setValue(62); 
        int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");}
    }//GEN-LAST:event_admcbox1ActionPerformed

    private void streamcbox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_streamcbox1ActionPerformed
     if(streamcbox1.getSelectedIndex()==0){
    
}else{    bar1.setValue(71); 
        int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");}
    }//GEN-LAST:event_streamcbox1ActionPerformed

    private void jRadioButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton3ActionPerformed
      bar1.setValue(85); 
     int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
 optional="computer";
    }//GEN-LAST:event_jRadioButton3ActionPerformed

    private void jRadioButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton4ActionPerformed
      bar1.setValue(85);  
   int a= bar1.getValue();
 percentage1.setText(Integer.toString(a)+"%"+"Completed");
optional="hindi";
    }//GEN-LAST:event_jRadioButton4ActionPerformed

    private void student_tblMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_student_tblMouseClicked
        int i=student_tbl.getSelectedRow();
        TableModel model=student_tbl.getModel();
        String name=(model.getValueAt(i,1).toString());

        Connection conn=null;
        PreparedStatement pstmt=null;
        try{

            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql:///Student_management_System","root","root");
            pstmt=conn.prepareStatement
            ("select * from students_info where firstname=?");
            pstmt.setString(1,name);
            ResultSet rs=pstmt.executeQuery();

            while(rs.next()){
                fname=rs.getString("firstname");
                sname=rs.getString("surname");
                mob=rs.getString("mobile");
                mail=rs.getString("email");
                add=rs.getString("address");
                strm=rs.getString("stream");
                opt_sub=rs.getString("optional");
                totalamt=rs.getInt("total");
                reg=rs.getInt("registration");
                adm=rs.getInt("admission");
               
               class_lbl.setText(Integer.toString(adm));
               name_lbl.setText(fname+" "+sname);
               mobile_lbl.setText(mob);
               email_lbl.setText(mail);
               address_lbl.setText(add);
               stream_lbl.setText(strm);
               opt_lbl.setText(opt);
               tot_fld.setText("55000");
               amt_fld.setText(Integer.toString(totalamt));
              int m =Integer.parseInt(tot_fld.getText());
              int n=Integer.parseInt(amt_fld.getText());
              
               remain_fld.setText(Integer.toString(m-n));

            }
        }catch(Exception e){JOptionPane.showMessageDialog(null,e);}

    }//GEN-LAST:event_student_tblMouseClicked

    private void searchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_searchActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_searchActionPerformed

    private void topbarMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_topbarMousePressed
x=evt.getX();
y=evt.getY();         // TODO add your handling code here:
    }//GEN-LAST:event_topbarMousePressed

    private void topbarMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_topbarMouseDragged
int X=evt.getXOnScreen();
int Y=evt.getYOnScreen();

this.setLocation(X-x,Y-y);         // TODO add your handling code here:
    }//GEN-LAST:event_topbarMouseDragged

    private void jLabel22MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel22MouseEntered
jLabel22.setForeground(new Color(255,153,0));        // TODO add your handling code here:[]
    }//GEN-LAST:event_jLabel22MouseEntered

    private void jLabel22MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel22MouseExited
jLabel22.setForeground(new Color(52,152,219));         // TODO add your handling code here:
    }//GEN-LAST:event_jLabel22MouseExited

    private void jLabel17MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel17MouseEntered
  jLabel17.setForeground(new Color(255,153,0));       // TODO add your handling code here:
    }//GEN-LAST:event_jLabel17MouseEntered

    private void jLabel17MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel17MouseExited
jLabel17.setForeground(new Color(52,152,219));         // TODO add your handling code here:
    }//GEN-LAST:event_jLabel17MouseExited

    private void jLabel23MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel23MouseClicked
this.setState(ICONIFIED);        // TODO add your handling code here:
    }//GEN-LAST:event_jLabel23MouseClicked

    private void jLabel20MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel20MouseClicked
 int msg=JOptionPane.showConfirmDialog(null,"Are you sure to Exit.");
            if(msg==JOptionPane.YES_OPTION){
        
        System.exit(0);     }
    }//GEN-LAST:event_jLabel20MouseClicked

    private void srchbtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_srchbtnMouseClicked
  DefaultTableModel model=(DefaultTableModel) student_tbl.getModel();
        Connection conn=null;
        PreparedStatement pstmt=null;
        try{

            String srch=search.getText();

            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql:///Student_management_System","root","root");
            pstmt=conn.prepareStatement("select*from students_info where admission=?");
            pstmt.setString(1,srch);
            ResultSet rs=pstmt.executeQuery();

            int count=0;
            while(rs.next()){
                fname=rs.getString("firstname");
                sname=rs.getString("surname");
                mob=rs.getString("mobile");
                mail=rs.getString("email");
                add=rs.getString("address");
                gen=rs.getString("gender");
                regi=rs.getString("registration");
                    adm=rs.getInt("admission");
                strm=rs.getString("stream");
                opt=rs.getString("optional");
                totalamt=rs.getInt("total");

                count++;
                model.addRow(new Object[]{regi,fname,sname,gen});

            }
        }catch(Exception e){JOptionPane.showMessageDialog(null,e);}        
    }//GEN-LAST:event_srchbtnMouseClicked

    private void exitbtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_exitbtnMouseClicked
      DefaultTableModel model=(DefaultTableModel) student_tbl.getModel();
        int rows=model.getRowCount();
        search.setText("Enter Class");
        name_lbl.setText("Student Name Here");
        email_lbl.setText("Student's Email Here");
        mobile_lbl.setText("Student's Phone Here");
        address_lbl.setText("Student's Address Here");
        class_lbl.setText("Student's Class");
        stream_lbl.setText("Student's Stream");
        opt_lbl.setText("Student's Optional Subject");
        tot_fld.setText("");
        amt_fld.setText("");
        remain_fld.setText("");
        
        if(rows>0){
            for (int i=0; i<rows ;i++)
            {
                model.removeRow(0);
            }
        }       
    }//GEN-LAST:event_exitbtnMouseClicked

    private void searchMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_searchMousePressed
     search.setText("");
    }//GEN-LAST:event_searchMousePressed

    private void clr_addMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_addMouseExited
  clr_add.setBorder(null);
      clr_add.setFont(new Font("DejaVu Serif", Font.BOLD, 12)); 
    }//GEN-LAST:event_clr_addMouseExited

    private void clr_addMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_addMouseEntered
 Border border = BorderFactory.createLineBorder(new Color(255,255,255),2);
      clr_add.setBorder(border);
      clr_add.setFont(new Font("DejaVu Serif", Font.BOLD, 11));          // TODO add your handling code here:
    }//GEN-LAST:event_clr_addMouseEntered

    private void deleteMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_deleteMouseExited

        delete.setBorder(null);
      delete.setFont(new Font("DejaVu Serif", Font.BOLD, 12));  
    }//GEN-LAST:event_deleteMouseExited

    private void deleteMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_deleteMouseEntered
            Border border = BorderFactory.createLineBorder(new Color(255,255,255),2);
      delete.setBorder(border);
      delete.setFont(new Font("DejaVu Serif", Font.BOLD, 11));  
    }//GEN-LAST:event_deleteMouseEntered

    private void deleteMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_deleteMouseClicked

        int a= bar1.getValue();
        if(a==100){

            Connection conn=null;
            PreparedStatement pstmt=null;

            //Storing input in created variables.

            String fname=fname_field1.getText();
            String sname=sname_field1.getText();
            String mob=mobile_field1.getText();
            String email=email_field1.getText();
            String add=address_field1.getText();
            String gender=gendar;
            String reg=reg_field1.getText();
            String adm=(String)admcbox1.getSelectedItem();
            String strm=(String)streamcbox1.getSelectedItem();
            String optsub=optional;
            String amt=amount_field.getText();
            String optamt=opt_field.getText();
            String totalamt=total_field.getText();

            int msg=JOptionPane.showConfirmDialog(null,"Are you sure to add this Student.");
            if(msg==JOptionPane.YES_OPTION){

                try{

                    //Registering the JDBC
                    Class.forName("com.mysql.jdbc.Driver");
                    //Providing path to database through JDBC and storing it in variable 'conn'.
                    conn=DriverManager.getConnection("jdbc:mysql:///Student_management_System","root","root");
                    //MySQL query to insert data i.e to create account.
                    pstmt=conn.prepareStatement("insert into students_info values (?,?,?,?,?,?,?,?,?,?,?,?,?)");

                    //Providing the values to unknowns in query.
                    pstmt.setString(1,fname);
                    pstmt.setString(2,sname);
                    pstmt.setString(3,mob);
                    pstmt.setString(4,email);
                    pstmt.setString(5,add);
                    pstmt.setString(6,gender);
                    pstmt.setString(7,reg);
                    pstmt.setString(8,adm);
                    pstmt.setString(9,strm);
                    pstmt.setString(10,optsub);
                    pstmt.setString(11,amt);
                    pstmt.setString(12,optamt);
                    pstmt.setString(13,totalamt);

                    //Executing Query
                    int i=pstmt.executeUpdate();

                    //Varifying whether data inserted or not.
                    if(i>0)
                    {  JOptionPane.showMessageDialog(null,"Student Added successfully.");

                        fname_field1.setText("");
                        sname_field1.setText("");
                        mobile_field1.setText("");
                        email_field1.setText("");
                        address_field1.setText("");
                        reg_field1.setText("");
                        admcbox1.setSelectedIndex(0);
                        streamcbox1.setSelectedIndex(0);
                        amount_field.setText("Amount to pay");
                        opt_field.setText("Opt Subject Fee");
                        total_field.setText("");
                        bar1.setValue(0);
                        percentage1.setText("0 % Completed");
                    }

                    else{JOptionPane.showMessageDialog(null,"Student doesn't Added.");}

                    // clean up the Environment.
                    pstmt.close();
                    conn.close();
                }catch(Exception e){JOptionPane.showMessageDialog(null,e);}}
                else
                {JOptionPane.showMessageDialog(null,"Kindly Fill all the Fields");
                }}        // TODO add your handling code here:
    }//GEN-LAST:event_deleteMouseClicked

    private void clr_addMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_addMouseClicked
fname_field1.setText("");  
sname_field1.setText("");  
mobile_field1.setText("");  
email_field1.setText("");  
address_field1.setText("");  
reg_field1.setText("");  
admcbox1.setSelectedIndex(0);
streamcbox1.setSelectedIndex(0);
amount_field.setText("Amount to Pay"); 
opt_field.setText("Opt Subject Fee"); 
total_field.setText(""); 
bar1.setValue(0);
percentage1.setText("0 % Completed");        // TODO add your handling code here:
    }//GEN-LAST:event_clr_addMouseClicked

    private void clearMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clearMouseClicked
        name_lbl.setText("Student Name Here");
        email_lbl.setText("Student's Email Here");
        mobile_lbl.setText("Student's Phone Here");
        address_lbl.setText("Student's Address Here");
        class_lbl.setText("Student's Class");
        stream_lbl.setText("Student's Stream");
        opt_lbl.setText("Student's Optional Subject");
        tot_fld.setText("");
        amt_fld.setText("");
        remain_fld.setText("");
    }//GEN-LAST:event_clearMouseClicked

    private void clearMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clearMouseExited
           clear.setBorder(null);
      clear.setFont(new Font("DejaVu Serif", Font.BOLD, 12));  
    }//GEN-LAST:event_clearMouseExited

    private void clearMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clearMouseEntered
     Border border = BorderFactory.createLineBorder(new Color(255,255,255),2);
      clear.setBorder(border);
      clear.setFont(new Font("DejaVu Serif", Font.BOLD, 11));  
    }//GEN-LAST:event_clearMouseEntered

    private void jLabel22MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel22MouseClicked

int logout=JOptionPane.showConfirmDialog(null,"Are you sure want to LogOut ?");        
        if(logout==JOptionPane.YES_OPTION){
this.setVisible(false);  
Login_signup ls=new Login_signup();
ls.setVisible(true);}
    }//GEN-LAST:event_jLabel22MouseClicked

    private void clr_add1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_add1MouseClicked
   
        
        Desktop d=Desktop.getDesktop();
        try {
            d.browse(new URI("http://3devsproject.blogspot.com/?m=1"));
        } catch (Exception ex) {}
        
  
    }//GEN-LAST:event_clr_add1MouseClicked

    private void clr_add1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_add1MouseExited
          clr_add1.setBorder(null);
      clr_add1.setFont(new Font("DejaVu Serif", Font.BOLD, 12));  
    }//GEN-LAST:event_clr_add1MouseExited

    private void clr_add1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_clr_add1MouseEntered
         Border border = BorderFactory.createLineBorder(new Color(255,255,255),4);
      clr_add1.setBorder(border);
      clr_add1.setFont(new Font("DejaVu Serif", Font.BOLD, 11));  
    }//GEN-LAST:event_clr_add1MouseEntered

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Dashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Dashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Dashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Dashboard.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Dashboard().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Add_student;
    private javax.swing.JPanel Bar;
    private javax.swing.JPanel Dashboard;
    private javax.swing.JPanel Fee_details;
    private javax.swing.JPanel Root;
    private javax.swing.JPanel School_details;
    private javax.swing.JPanel Student_details;
    private javax.swing.JLabel add4class1;
    private javax.swing.JTextField address_field1;
    private javax.swing.JLabel address_lbl;
    private javax.swing.JComboBox<String> admcbox1;
    private javax.swing.JTextField amount_field;
    private javax.swing.JTextField amt_fld;
    private javax.swing.JProgressBar bar1;
    private javax.swing.JPanel baroftotal;
    private javax.swing.JButton btnAus;
    private javax.swing.JButton btn_home;
    private javax.swing.JButton btnadd;
    private javax.swing.JButton btnview;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private javax.swing.JLabel class_lbl;
    private javax.swing.JLabel clear;
    private javax.swing.JLabel clr_add;
    private javax.swing.JLabel clr_add1;
    private javax.swing.JLabel date;
    private javax.swing.JLabel delete;
    private javax.swing.JTextField email_field1;
    private javax.swing.JLabel email_lbl;
    private javax.swing.JLabel emailaddress1;
    private javax.swing.JLabel exitbtn;
    private javax.swing.JRadioButton female_rb1;
    private javax.swing.JLabel firstname1;
    private javax.swing.JTextField fname_field1;
    private javax.swing.JLabel gender1;
    private javax.swing.JLabel grad;
    private javax.swing.JLabel haddress1;
    private javax.swing.JLabel img;
    private javax.swing.JPanel img1;
    private javax.swing.JPanel img2;
    private javax.swing.JPanel img3;
    private javax.swing.JPanel img4;
    private javax.swing.JPanel img_pnl;
    private javax.swing.JLabel inet;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel43;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JPanel jPanel9;
    private diu.swe.habib.JPanelSlider.JPanelSlider jPanelSlider1;
    private javax.swing.JRadioButton jRadioButton3;
    private javax.swing.JRadioButton jRadioButton4;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JLabel labelworking;
    private javax.swing.JLabel lbladd;
    private javax.swing.JLabel lblau;
    private javax.swing.JLabel lbldash;
    private javax.swing.JLabel lblhome1;
    private javax.swing.JLabel lblhome2;
    private javax.swing.JLabel lblview;
    private javax.swing.JRadioButton male_rb1;
    private javax.swing.JLabel mob1;
    private javax.swing.JTextField mobile_field1;
    private javax.swing.JLabel mobile_lbl;
    private javax.swing.JLabel name_lbl;
    private javax.swing.JTextField opt_field;
    private javax.swing.JLabel opt_lbl;
    private javax.swing.JLabel paid_lbl;
    private javax.swing.JLabel percentage1;
    private javax.swing.JPanel pnlBody;
    private javax.swing.JPanel pnlaboutus;
    private javax.swing.JPanel progress1;
    private javax.swing.JTextField reg_field1;
    private javax.swing.JLabel registration1;
    private javax.swing.JTextField remain_fld;
    private javax.swing.JLabel remaining_lbl;
    private javax.swing.JTextField search;
    private javax.swing.JTextField sname_field1;
    private javax.swing.JPanel srch_pnl;
    private javax.swing.JLabel srchbar;
    private javax.swing.JLabel srchbtn;
    private javax.swing.JLabel stream1;
    private javax.swing.JLabel stream_lbl;
    private javax.swing.JComboBox<String> streamcbox1;
    private javax.swing.JTable student_tbl;
    private javax.swing.JLabel subject1;
    private javax.swing.JLabel surname1;
    private javax.swing.JLabel timer;
    private javax.swing.JLabel toatal_teacher;
    private javax.swing.JPanel topbar;
    private javax.swing.JTextField tot_fld;
    private javax.swing.JLabel total_classes;
    private javax.swing.JTextField total_field;
    private javax.swing.JLabel total_lbl;
    private javax.swing.JLabel total_student;
    private javax.swing.JLabel total_subjects;
    private javax.swing.JPanel user_loged;
    private javax.swing.JPanel view_students;
    // End of variables declaration//GEN-END:variables

private String gendar,optional;
}
