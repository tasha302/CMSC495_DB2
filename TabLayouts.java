package com.jeremyworthy;

import javax.swing.*;

public class TabLayouts extends JFrame {
    public TabLayouts()
    {
        setTitle ("Inventory Management Sample");
        setSize (1100, 800);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocation(300,300);

        JTabbedPane MyTabs = new JTabbedPane();
        MyTabs.addTab("Inventory Management", new InfoTab());
        MyTabs.addTab("Inventory", new Inventory());


        add(MyTabs);

        setVisible (true);
    }
}
