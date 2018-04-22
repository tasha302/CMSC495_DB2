import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JRadioButton;

public class ReportsFrame extends JFrame implements ActionListener {

	private static final long serialVersionUID = 1L;
	
	private ButtonGroup reportGroup;
	private ButtonGroup dateGroup;
	private JRadioButton neededButton;
	private JRadioButton expiringButton;
	private JRadioButton totalOrdersButton;
	private JRadioButton totalSalesButton;
	private JRadioButton newCustomersButton;
	private JRadioButton currentWeekButton;
	private JRadioButton currentMonthButton;
	private JRadioButton currentYearButton;
	private JButton reportButton;
	private JButton backButton;
	
	public ReportsFrame(Component parent) {
		setTitle("Reports");
		setSize(400, 600);
		setLayout(new BorderLayout());
		setLocationRelativeTo(parent);
		
		JPanel centerPanelPadding = new JPanel();
		
		JPanel centerPanel = new JPanel(new GridLayout(1,2));
		
		JPanel leftCenterPanel = new JPanel(new GridLayout(5, 1));
		neededButton = new JRadioButton("Inventory Needed");
		expiringButton = new JRadioButton("Expiring Inventory");
		totalOrdersButton = new JRadioButton("Total Orders");
		totalSalesButton = new JRadioButton("Total Sales");
		newCustomersButton = new JRadioButton("New Customers");
		reportGroup = new ButtonGroup();
		reportGroup.add(neededButton);
		reportGroup.add(expiringButton);
		reportGroup.add(totalOrdersButton);
		reportGroup.add(totalSalesButton);
		reportGroup.add(newCustomersButton);
		leftCenterPanel.add(neededButton);
		leftCenterPanel.add(expiringButton);
		leftCenterPanel.add(totalOrdersButton);
		leftCenterPanel.add(totalSalesButton);
		leftCenterPanel.add(newCustomersButton);
		
		centerPanel.add(leftCenterPanel);
		
		JPanel rightCenterPanel = new JPanel(new GridLayout(3, 1));
		currentWeekButton = new JRadioButton("Current Week");
		currentMonthButton = new JRadioButton("Current Month");
		currentYearButton = new JRadioButton("Current Year");
		dateGroup = new ButtonGroup();
		dateGroup.add(currentWeekButton);
		dateGroup.add(currentMonthButton);
		dateGroup.add(currentYearButton);
		rightCenterPanel.add(currentWeekButton);
		rightCenterPanel.add(currentMonthButton);
		rightCenterPanel.add(currentYearButton);
		
		centerPanel.add(rightCenterPanel);
		
		centerPanelPadding.add(centerPanel);
		
		add(centerPanelPadding, BorderLayout.CENTER);
		
		JPanel buttonsPanel = new JPanel();
		reportButton = new JButton("Get Report");
		reportButton.addActionListener(this);
		buttonsPanel.add(reportButton);
		backButton = new JButton("Back");
		backButton.addActionListener(this);
		buttonsPanel.add(backButton);
		
		add(buttonsPanel, BorderLayout.SOUTH);
		
		setVisible(true);
		
	}
	

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource() == backButton) {
			this.dispose();
		}
		else if(e.getSource() == reportButton) {
			//todo
		}
		
		
	}

}
