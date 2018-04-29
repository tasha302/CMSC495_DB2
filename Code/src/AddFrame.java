import java.awt.BorderLayout;
import java.awt.Component;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Vector;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class AddFrame extends JFrame implements ActionListener {

    private static final long serialVersionUID = 1L;

    private String tableName;
    private Vector<String> labels;
    private Vector<JTextField> textAreas;
    private ResultSet resultSet;

    private JButton addButton;
    private JButton cancelButton;

    public AddFrame(Component parent, Vector<String> labels, String table, ResultSet rs) {
        setSize(400, 600);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLayout(new BorderLayout());
        setLocationRelativeTo(parent);
        this.labels = labels;
        tableName = table;
        resultSet = rs;

        JPanel outsidePanel = new JPanel();
        // add some padding
        outsidePanel.setBorder(new EmptyBorder(15, 15, 15, 15));

        JPanel insidePanel = new JPanel();
        insidePanel.setLayout(new GridLayout(labels.size(), 2, 15, 15));

        textAreas = new Vector<>();

        for (int i = 0; i < labels.size(); i++) {
            insidePanel.add(new JLabel(labels.get(i)));
            JTextField field = new JTextField(10);
            if (i == 0) {
                field.setEditable(false);
            }
            textAreas.add(field);
            insidePanel.add(textAreas.get(i));
        }

        outsidePanel.add(insidePanel);

        add(outsidePanel, BorderLayout.CENTER);

        // buttons panel
        JPanel buttonsPanel = new JPanel();
        addButton = new JButton("Add");
        addButton.addActionListener(this);
        buttonsPanel.add(addButton);
        cancelButton = new JButton("Cancel");
        cancelButton.addActionListener(this);
        buttonsPanel.add(cancelButton);

        add(buttonsPanel, BorderLayout.SOUTH);

        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == addButton) {
            String statement = "INSERT INTO MASTER." + tableName + " (";
            String fields = "";
            for (int i = 0; i < labels.size(); i++) {
                fields += labels.get(i);
                if (i < labels.size() - 1) {
                    fields += ", ";
                }
            }
            statement += fields + ") values(";
            String data = "";
            for (int i = 0; i < textAreas.size(); i++) {
                String type = "";
                try {
                    type = resultSet.getMetaData().getColumnTypeName(i + 1);
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
                if (type.equals("VARCHAR")) {
                    data += "\"" + textAreas.get(i).getText() + "\"";
                } else if (type.equals("DATE")) {
                    /*This code formats to the corrected date
                    DateFormat formatter = new SimpleDateFormat("yyyy-MM-DD");
                    Date date = null;
                    try {
                        date = (Date)formatter.parse(textAreas.get(i).getText());
                    } catch (ParseException ex) {
                        JOptionPane.showMessageDialog(null,"Unable to Format Date");
                    }
                    data += "'" + date.toString() + "'";
		    */
	            /*This code just throws an error message claiming incorrect format
		    DateFormat formatter = new SimpleDateFormat("yyyy-MM-DD");
                    formatter.setLenient(false);
		    try {
                    Date date= (Date)formatter.parse(textAreas.get(i).getText());
                    data += "'" + date.toString() + "'";
                    } catch (ParseException e1) {
                     JOptionPane.showMessageDialog(null,"Invalid Date Format. Please Enter Date As: yyyy-MM-DD");
                    }
		    
		    */
	            data += textAreas.get(i).getText();
                } else if (type.equals("INT")) {
                    data += textAreas.get(i).getText();
                }
                if (i < textAreas.size() - 1) {
                    data += ", ";
                }
            }
            statement += data + ")";
            try {
                DatabaseFactory.executeStatement(statement);
                JOptionPane.showMessageDialog(this, "Item added successfully");
            } catch (SQLException e1) {
                JOptionPane.showMessageDialog(this, "Error:\n" + e1.getMessage());
            }
        } else if (e.getSource() == cancelButton) {
            this.dispose();
        }

    }

}
