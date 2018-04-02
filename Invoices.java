package com.jeremyworthy;

import javax.swing.*;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.util.Arrays;

public class Invoices extends JPanel {

    private DynamicModelObject model = new DynamicModelObject();
    private JTable table;
    private JButton addButton, removeButton;
    TableRowSorter sorter;

    public Invoices(){

        super();


        table = new JTable(model);

        //sorter
        table.setAutoCreateRowSorter(true);
        TableRowSorter<TableModel> sorter
                = new TableRowSorter<>(table.getModel());
        table.setRowSorter(sorter);

        setLayout(new BorderLayout());

        add(new JScrollPane(table),BorderLayout.CENTER);
add( new JButton(new AddAction()), BorderLayout.WEST);
add(new JButton(new RemoveAction()), BorderLayout.SOUTH);
add(new JButton(new FilterAction()), BorderLayout.EAST);


        //  Place table in middle with buttons to the right
//        setLayout(new FlowLayout());
//        add(new JScrollPane(table));
//        add(new JButton(new AddAction()));
//        add(new JButton(new RemoveAction()));


        //Gridbag did not work
        //setLayout(new GridBagLayout());

        //addItem(new JScrollPane(table),0,0,0,0,GridBagConstraints.PAGE_START);
       // addItem(new JButton(new AddAction()),0,5,1,1,GridBagConstraints.LAST_LINE_START);
      //  addItem(new JButton(new RemoveAction()),3,5,1,1,GridBagConstraints.LAST_LINE_END);
       // add(addButton, BorderLayout.SOUTH);
        //add(removeButton(new RemoveAction()), BorderLayout.SOUTH);


//        JPanel panel2 = new JPanel();
//
//        panel2.setLayout(new GridLayout(1,2));
    }


    private class AddAction extends AbstractAction {
        private AddAction() {
            super("Add");
        }

        public void actionPerformed(ActionEvent e) {
            model.addEntry(new Entry(999,"New Item", 99, 59.99));
        }
    }

    private class RemoveAction extends AbstractAction {
        private RemoveAction() {
            super("Remove");
        }

        public void actionPerformed(ActionEvent e) {
            int[] selection = table.getSelectedRows();
            int[] modelIndexes = new int[selection.length];

            for(int i = 0; i < selection.length; i++){
                modelIndexes[i] = table.getRowSorter().convertRowIndexToModel(selection[i]);
            }

            Arrays.sort(modelIndexes);

            for(int i = modelIndexes.length - 1; i >= 0; i--){
                model.removeEntry(modelIndexes[i]);
            }
        }
    }

    private class FilterAction extends AbstractAction {
        private FilterAction() {
            super("Filter");
        }

        public void actionPerformed(ActionEvent e) {
            String regex = JOptionPane.showInputDialog("Filter regex : ");

            sorter.setRowFilter(RowFilter.regexFilter(regex, 0, 1));
        }
    }
//For Gridbag Layout
//    private void addItem(JComponent c, int x, int y, int width, int height, int align) {//addItem() sets parameters to shorten the addition of adding the panels to the frame.
//        GridBagConstraints gc = new GridBagConstraints();
//        gc.gridx = x;
//        gc.gridy = y;
//        gc.gridwidth = width;
//        gc.gridheight = height;
//        gc.weightx = 1;
//        gc.weighty = 1;
//        gc.insets = new Insets(5, 5, 5, 5);
//        gc.anchor = align;
//        gc.fill = GridBagConstraints.NONE;
//        add(c);
//    }
    }
