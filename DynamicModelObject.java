package com.jeremyworthy;



import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;

public class DynamicModelObject extends AbstractTableModel {
    private final ArrayList entries = new ArrayList();

    private final String[] headers = {"Item ID", "Description", "On Hand", "Cost"};

    public DynamicModelObject() {
        super();

        entries.add(new Entry(101, "Shoes",12,12.56));
        entries.add(new Entry(102, "Cologne", 89, 56.98));
        entries.add(new Entry(103, "Milk", 42, 3.49));
        entries.add(new Entry(104,"Apple Sauce", 27,0.99));
        entries.add(new Entry(105,"Tires", 84, 89.79));
        entries.add(new Entry(106, "Butter", 35, 3.11));
        entries.add(new Entry(107, "Cereal", 608,2.50));
    }

    public int getRowCount() {
        return entries.size();
    }

    public int getColumnCount() {
        return headers.length;
    }

    public String getColumnName(int columnIndex) {
        return headers[columnIndex];
    }

    public Object getValueAt(int rowIndex, int columnIndex) {//does not work
        switch(columnIndex){
            case 0:
                return entries.get(rowIndex);
                        //.getFirstName();
            case 1:
                return entries.get(rowIndex);
                //.getName();
            case 2:
                return entries.get(rowIndex);
                //.getColor();
            case 3:
                return entries.get(rowIndex);
                //.isGender();
            case 4:
                return entries.get(rowIndex);
                //.getSport();
            default:
                return null; //Must never happens
        }
    }

    public void addEntry(Entry entry) {
        entries.add(entry);

        fireTableRowsInserted(entries.size() -1, entries.size() -1);
    }

    public void removeEntry(int rowIndex) {
        entries.remove(rowIndex);

        fireTableRowsDeleted(rowIndex, rowIndex);
    }
}