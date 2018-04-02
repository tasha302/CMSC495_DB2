package com.jeremyworthy;

import javax.swing.*;

public class TabLayouts extends JFrame {
    public TabLayouts()
    {
        setTitle ("Orders Management Sample");
        setSize (1100, 800);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocation(300,300);

        JTabbedPane MyTabs = new JTabbedPane();
        MyTabs.addTab("Items", new Items());
        MyTabs.addTab("Orders", new Orders());
        MyTabs.addTab("Vendors", new Vendors());
        MyTabs.addTab("Sales", new Sales());
        MyTabs.addTab("Customers", new Customers());
        MyTabs.addTab("Invoices", new Invoices());

        add(MyTabs);

        setVisible (true);
    }
}
