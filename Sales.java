package com.jeremyworthy;

import javax.swing.*;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.util.Arrays;

public class Sales extends JPanel {
    private DynamicModelObject model = new DynamicModelObject();
    private JTable table;
    private JButton addButton, removeButton;
    TableRowSorter sorter;

    public Sales() {

        super();


        table = new JTable(model);

        //sorter
        table.setAutoCreateRowSorter(true);
        TableRowSorter<TableModel> sorter
                = new TableRowSorter<>(table.getModel());
        table.setRowSorter(sorter);

        setLayout(new BorderLayout());

        add(new JScrollPane(table), BorderLayout.CENTER);
        add(new JButton(new AddAction()), BorderLayout.WEST);
        add(new JButton(new RemoveAction()), BorderLayout.SOUTH);
        add(new JButton(new FilterAction()), BorderLayout.EAST);

    }
    private class AddAction extends AbstractAction {
        private AddAction() {
            super("Add");
        }

        public void actionPerformed(ActionEvent e) {
            model.addEntry(new Entry(999, "New Item", 99, 59.99));
        }
    }

    private class RemoveAction extends AbstractAction {
        private RemoveAction() {
            super("Remove");
        }

        public void actionPerformed(ActionEvent e) {
            int[] selection = table.getSelectedRows();
            int[] modelIndexes = new int[selection.length];

            for (int i = 0; i < selection.length; i++) {
                modelIndexes[i] = table.getRowSorter().convertRowIndexToModel(selection[i]);
            }

            Arrays.sort(modelIndexes);

            for (int i = modelIndexes.length - 1; i >= 0; i--) {
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
}