package airline.management.system;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.JTable;
import net.proteanit.sql.DbUtils;

public class Ticket {
    public void EnterDetails() {
        
        JTable table = new JTable();
        table.setBackground(Color.WHITE);
	table.setBounds(23, 250, 800, 300);
        
        JFrame frame = new JFrame("Ticket Information");
        JPanel panel = new JPanel();
        panel.setLayout(new FlowLayout());
        JLabel label = new JLabel("Enter the PNR: ");
        JTextField field = new JTextField(15);panel.add(label);
        panel.add(field);
        JButton button = new JButton();
        button.setText("Confirm");
        JScrollPane pane = new JScrollPane(table);
	pane.setBounds(23, 250, 800, 300);
        pane.setBackground(Color.WHITE);
        panel.add(button);
        panel.add(pane);
        panel.add(table);
        frame.add(panel);
        frame.setSize(800, 600);
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
        
        button.addActionListener(new ActionListener(){
            public void actionPerformed(ActionEvent ae){
                
                String code = field.getText();
                try {
                    conn c = new conn();
                    String str = "select fl_code ,pnr_no ,name ,address ,gender ,nationality ,ph_no from passenger where pnr_no = '"+code+"'";
      
                    ResultSet rs = c.s.executeQuery(str);
                    table.setModel(DbUtils.resultSetToTableModel(rs));
                    
                    System.out.println(rs);
                    
                }catch(SQLException e){
                    e.printStackTrace();
                }
            }
        });
    }
} 
