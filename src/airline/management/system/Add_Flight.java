package airline.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;


public class Add_Flight extends JFrame {
    
    private JTextField textField,textField_1,textField_2,textField_3;

    public static void main(String[] args) {
        new Add_Flight();
    }
    
    public Add_Flight() {
        initialize();
    }
    
    private void initialize() {
        setTitle("Netrunner Feeder");
	getContentPane().setBackground(Color.WHITE);
	setBounds(100, 100, 801, 472);
	setLayout(null);
		
	JLabel Cancellation = new JLabel("FLIGHT INFO");
	Cancellation.setFont(new Font("Tahoma", Font.PLAIN, 31));
	Cancellation.setBounds(185, 24, 259, 38);
	add(Cancellation);
		
	
        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("airline/management/system/icon/added.png"));
        Image i2 = i1.getImage().getScaledInstance(250, 250, Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel NewLabel = new JLabel(i3);
	NewLabel.setBounds(470, 100, 250, 250);
	add(NewLabel);
		
	JLabel FlightCode = new JLabel("Flight Code");
	FlightCode.setFont(new Font("Tahoma", Font.PLAIN, 17));
	FlightCode.setBounds(60, 100, 132, 26);
	add(FlightCode);
		
	JLabel CancellationNo = new JLabel("Flight Name");
	CancellationNo.setFont(new Font("Tahoma", Font.PLAIN, 17));
	CancellationNo.setBounds(60, 150, 150, 27);
	add(CancellationNo);
		
	JLabel CancellationDate = new JLabel("Source");
	CancellationDate.setFont(new Font("Tahoma", Font.PLAIN, 17));
	CancellationDate.setBounds(60, 200, 180, 27);
	add(CancellationDate);
		
	JLabel Ticketid = new JLabel("Destination");
	Ticketid.setFont(new Font("Tahoma", Font.PLAIN, 17));
	Ticketid.setBounds(60, 250, 150, 27);
	add(Ticketid);
		
	JButton Addf = new JButton("Add Info");
	Addf.setFont(new Font("Tahoma", Font.PLAIN, 14));
        Addf.setBackground(Color.BLACK);
        Addf.setForeground(Color.WHITE);
	Addf.setBounds(250, 350, 150, 30);
	add(Addf);
		
	textField = new JTextField();
	textField.setBounds(160, 100, 150, 27);
	add(textField);
	
        textField_1 = new JTextField();
	textField_1.setBounds(160, 150, 150, 27);
	add(textField_1);
		
	textField_2 = new JTextField();
	textField_2.setBounds(160, 200, 150, 27);
	add(textField_2);
	
        textField_3 = new JTextField();
	textField_3.setBounds(160, 250, 150, 27);
	add(textField_3);
	
        Addf.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
		
                String f_code = textField.getText();
		String f_name = textField_1.getText();
		String src = textField_2.getText();
		String dst = textField_3.getText();
					
					
		try{	
                    conn c = new conn();
                    String str = "INSERT INTO flight values('"+f_code+"', '"+f_name+"', '"+src+"', '"+dst+"')";
		
                    c.s.executeUpdate(str);
                    JOptionPane.showMessageDialog(null,"Flight Information Added Successfully.");
                    setVisible(false);
						
		}catch (Exception e) {
                    e.printStackTrace();
                }
            }   
        });
			
	setSize(860,500);
	setVisible(true);
        setLocation(400,200);
    }
}