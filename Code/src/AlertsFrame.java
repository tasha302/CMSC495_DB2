import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class AlertsFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 1L;
	
	private JButton lowStockButton;
	private JButton expiringButton;
	private JButton receivableButton;
	private JButton payableButton;
	private JTextField lowStockField;
	private JTextField expiringField;
	private JTextField receivableField;
	private JTextField payableField;
	private JButton backButton;
	
	public AlertsFrame (Component parent) {
		setTitle("Alerts");
		setSize(1000, 400);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(parent);
        setLayout(new BorderLayout());
        
        JPanel outsidePanel = new JPanel();
        // add some padding
        outsidePanel.setBorder(new EmptyBorder(15,15,15,15));
        
        JPanel insidePanel = new JPanel();
        insidePanel.setLayout(new GridLayout(2, 3, 2, 8));
        
        insidePanel.add(new JLabel("Show stock with quantity less than: "));
        lowStockField = new JTextField(3);
        insidePanel.add(lowStockField);
        lowStockButton = new JButton("Low Stock");
        lowStockButton.addActionListener(this);
        insidePanel.add(lowStockButton);
        insidePanel.add(new JLabel("Show items expiring in how many days: "));
        expiringField = new JTextField(3);
        insidePanel.add(expiringField);
        expiringButton = new JButton("Expiring Items");
        expiringButton.addActionListener(this);
        insidePanel.add(expiringButton);
        /*
        insidePanel.add(new JLabel("Payables due within the next how many days: "));
        payableField = new JTextField(3);
        insidePanel.add(payableField);
        payableButton = new JButton("Payables Due");
        payableButton.addActionListener(this);
        insidePanel.add(payableButton);
        insidePanel.add(new JLabel("Receivables due within the next how many days: "));
        receivableField = new JTextField(3);
        insidePanel.add(receivableField);
        receivableButton = new JButton("Receivables Due");
        receivableButton.addActionListener(this);
        insidePanel.add(receivableButton);
        */
        
        outsidePanel.add(insidePanel);
        add(outsidePanel, BorderLayout.CENTER);
        
        JPanel southPanel = new JPanel();
        backButton = new JButton("Back");
        backButton.addActionListener(this);
        southPanel.add(backButton);
        
        add(southPanel, BorderLayout.SOUTH);
        
        setVisible(true);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource() == backButton) {
			this.dispose();
		}
		else if(e.getSource() == lowStockButton) {
			try {
				String query = "Select inventory.item_id, item_description.name From inventory " 
						     + "inner join item_description on inventory.item_id = item_description.item_id "
						     + "Where inventory.quantity_onhand < " + lowStockField.getText() + " " 
						     + "Order by inventory.quantity_onhand DESC";
				ResultSet rs = DatabaseFactory.executeQuery(query);
				new AlertsResultsFrame(this, rs);
			} catch (SQLException e1) {
				JOptionPane.showMessageDialog(this, "Please input a number into the text field");
			}
		}
		else if(e.getSource() == expiringButton) {
			try {
				String query = "Select item_expiration.item_id, item_description.name "
						     + "From item_expiration "
						     + "inner join item_description on item_expiration.item_id = item_description.item_id "
						     + "Where item_expiration.exp_date >= DATE_ADD( now(), interval + " + expiringField.getText() + " day) "
						     + "Group by item_expiration.exp_date ASC";
				ResultSet rs = DatabaseFactory.executeQuery(query);
				new AlertsResultsFrame(this, rs);
			} catch (SQLException e1) {
				JOptionPane.showMessageDialog(this, "Please input a number into the text field");
			}
		}
	}

}
