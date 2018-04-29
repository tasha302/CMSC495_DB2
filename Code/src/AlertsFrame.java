import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

public class AlertsFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 1L;
	
	private JButton lowStockButton;
	private JButton expiringButton;
	private JButton backButton;
	
	public AlertsFrame (Component parent) {
		setTitle("Alerts");
		setSize(600, 400);
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(parent);
        setLayout(new BorderLayout());
        
        JPanel outsidePanel = new JPanel();
        // add some padding
        outsidePanel.setBorder(new EmptyBorder(15,15,15,15));
        
        JPanel insidePanel = new JPanel();
        insidePanel.setLayout(new GridLayout(1, 2, 15, 15));
        
        lowStockButton = new JButton("Low Stock");
        lowStockButton.addActionListener(this);
        insidePanel.add(lowStockButton);
        expiringButton = new JButton("Expiring Items");
        expiringButton.addActionListener(this);
        insidePanel.add(expiringButton);
        
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
				String query = "Select inventory.item_id, item_description.name From inventory inner join item_description on inventory.item_id = item_description.item_id Where inventory.quantity_onhand < 3 Order by inventory.quantity_onhand DESC";
				ResultSet rs = DatabaseFactory.executeQuery(query);
				new AlertsResultsFrame(this, rs);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		else if(e.getSource() == expiringButton) {
			try {
				String query = "Select item_expiration.item_id, item_description.name From item_expiration inner join item_description on item_expiration.item_id = item_description.item_id Where item_expiration.exp_date >= DATE_ADD( now(), interval -7 day) Group by item_expiration.exp_date ASC";
				ResultSet rs = DatabaseFactory.executeQuery(query);
				new AlertsResultsFrame(this, rs);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
